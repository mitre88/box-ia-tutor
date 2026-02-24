import Foundation

struct ChatMessage: Identifiable, Hashable {
    let id = UUID()
    let role: Role
    let content: String

    enum Role: String, Hashable {
        case user
        case assistant
        case system
    }
}
