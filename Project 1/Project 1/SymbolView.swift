import SwiftUI

struct SymbolView: View {
    var body: some View {
        VStack {
            Image(systemName: "paintpalette.fill")
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .frame(maxWidth: .infinity)
                .padding()
        }
        .navigationTitle("My Symbol")
    }
}
