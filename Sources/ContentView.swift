import SwiftUI

struct ContentView: View {
    @State private var toques = 0

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "hand.wave.fill")
                .font(.system(size: 72))
                .foregroundStyle(.tint)
            Text("Hello, World!")
                .font(.largeTitle.bold())
            Text("Instalado fora da App Store")
                .foregroundStyle(.secondary)
            Button("Toques: \(toques)") { toques += 1 }
                .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
