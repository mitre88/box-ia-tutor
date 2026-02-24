import SwiftUI

struct HomeView: View {
    var body: some View {
        List {
            NavigationLink {
                CaptureView()
            } label: {
                Label {
                    Text("start_capture")
                } icon: {
                    Image(systemName: "camera")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .navigationTitle(Text("home_title"))
    }
}
