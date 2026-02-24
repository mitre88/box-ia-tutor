import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Image(systemName: "shippingbox")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundStyle(.blue)
                Text("Box AI Tutor")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("SwiftUI starter skeleton")
                    .foregroundStyle(.secondary)
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
