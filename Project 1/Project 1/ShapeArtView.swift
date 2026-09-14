import SwiftUI

struct ShapeArtView: View {
    var body: some View {
        ZStack {

            Rectangle()
                .fill(.blue.opacity(0.4))
                .ignoresSafeArea()

            Circle()
                .fill(.yellow)
                .frame(width: 120, height: 120)
                .offset(x: 100, y: -180)

            VStack {
                Spacer()

                ZStack {
                    Ellipse()
                        .fill(.green)
                        .frame(width: 450, height: 180)
                        .offset(x: -100, y: 70)

                    Ellipse()
                        .fill(.green.opacity(0.8))
                        .frame(width: 450, height: 160)
                        .offset(x: 120, y: 100)

                    Rectangle()
                        .fill(.blue)
                        .frame(height: 140)
                        .offset(y: 160)
                }
            }

            HStack(spacing: 80) {
                VStack {
                    Rectangle()
                        .fill(.brown)
                        .frame(width: 20, height: 100)

                    Circle()
                        .fill(.green)
                        .frame(width: 90, height: 90)
                        .offset(y: -130)
                }

                VStack {
                    Rectangle()
                        .fill(.brown)
                        .frame(width: 20, height: 80)

                    Circle()
                        .fill(.green)
                        .frame(width: 75, height: 75)
                        .offset(y: -110)
                }
            }
            .offset(y: 100)
        }
        .navigationTitle("Shape Art")
    }
}
