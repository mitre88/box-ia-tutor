import Foundation

/// Placeholder for the "coach" logic that turns pose signals into feedback.
final class CoachEngine {
    enum Feedback {
        case none
        case text(String)
    }

    func update() -> Feedback {
        .none
    }
}
