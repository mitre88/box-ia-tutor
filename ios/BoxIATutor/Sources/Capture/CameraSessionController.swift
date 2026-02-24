import AVFoundation
import Combine

@MainActor
final class CameraSessionController: ObservableObject {
    @Published var isRunning: Bool = false
    @Published var lastError: String?

    let session = AVCaptureSession()

    func configureIfNeeded() {
        guard session.inputs.isEmpty else { return }

        session.beginConfiguration()
        session.sessionPreset = .high

        defer { session.commitConfiguration() }

        guard let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front)
            ?? AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back)
        else {
            lastError = String(localized: "camera_unavailable")
            return
        }

        do {
            let input = try AVCaptureDeviceInput(device: camera)
            if session.canAddInput(input) { session.addInput(input) }

            let output = AVCaptureVideoDataOutput()
            output.alwaysDiscardsLateVideoFrames = true
            if session.canAddOutput(output) { session.addOutput(output) }
        } catch {
            lastError = error.localizedDescription
        }
    }

    func start() {
        guard !session.isRunning else { return }
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            self?.session.startRunning()
            DispatchQueue.main.async {
                self?.isRunning = true
            }
        }
    }

    func stop() {
        guard session.isRunning else { return }
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            self?.session.stopRunning()
            DispatchQueue.main.async {
                self?.isRunning = false
            }
        }
    }
}
