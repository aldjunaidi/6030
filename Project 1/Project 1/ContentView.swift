import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                NavigationLink {
                    AboutCardsView()
                } label: {
                    Label("About Me", systemImage: "person.crop.circle")
                }
                .buttonStyle(MenuButtonStyle())

                NavigationLink {
                    SymbolView()
                } label: {
                    Label("My Symbol", systemImage: "sparkles")
                }
                .buttonStyle(MenuButtonStyle())

                NavigationLink {
                    ShapeArtView()
                } label: {
                    Label("Shape Art", systemImage: "paintpalette.fill")
                }
                .buttonStyle(MenuButtonStyle())

            }
            .padding()
            .navigationTitle("My Content View")
            .frame(minWidth: 600, minHeight: 400)
        }
    }
}

struct MenuButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 250, height: 60)
            .foregroundStyle(.white)
            .background(Color(red: 0.55, green: 0.75, blue: 0.95))
            .cornerRadius(20)
    }
}

#Preview {
    ContentView()
}
