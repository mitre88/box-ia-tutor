import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            HomeView()
                .navigationTitle(Text("home_title"))
        }
    }
}

#Preview {
    RootView()
}
