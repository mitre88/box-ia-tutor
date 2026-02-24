import Foundation

/// Placeholder for pose estimation.
///
/// Implement with Vision (VNDetectHumanBodyPoseRequest) or a ML model (MoveNet/MediaPipe/etc.).
protocol PoseEstimating {
    func reset()
}

final class NoopPoseEstimator: PoseEstimating {
    func reset() {}
}
