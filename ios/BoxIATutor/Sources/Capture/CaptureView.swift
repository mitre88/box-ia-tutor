import AVFoundation
import SwiftUI
import UIKit

struct CaptureView: View {
    @StateObject private var camera = CameraSessionController()
    @State private var authStatus: AVAuthorizationStatus = CameraAuthorization.status()

    var body: some View {
        ZStack {
            switch authStatus {
            case .authorized:
                CameraPreviewView(session: camera.session)
                    .ignoresSafeArea()
                    .onAppear {
                        camera.configureIfNeeded()
                        camera.start()
                    }
                    .onDisappear {
                        camera.stop()
                    }

            case .notDetermined:
                ProgressView()
                    .task {
                        let granted = await CameraAuthorization.request()
                        authStatus = granted ? .authorized : .denied
                    }

            default:
                PermissionDeniedView()
            }

            if let err = camera.lastError {
                VStack {
                    Spacer()
                    Text(err)
                        .font(.footnote)
                        .padding(10)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding()
                }
            }
        }
        .navigationTitle(Text("start_capture"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct PermissionDeniedView: View {
    var body: some View {
        ContentUnavailableView {
            Label(String(localized: "camera_permission_title"), systemImage: "camera.fill")
        } description: {
            Text(String(localized: "camera_permission_message"))
        } actions: {
            Button(String(localized: "open_settings")) {
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url)
                }
            }
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        CaptureView()
    }
}
