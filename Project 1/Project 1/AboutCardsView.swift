import SwiftUI

struct AboutCardsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {

                AboutCard(
                    imageName: "coffee",
                    title: "Coffee Lover",
                    description: "I love finding new cafés and trying different drinks."
                )

                AboutCard(
                    imageName: "art",
                    title: "Artist",
                    description: "I enjoy design, illustration, and making things by hand."
                )

                AboutCard(
                    imageName: "travel",
                    title: "Traveler",
                    description: "I love exploring new places and experiencing different cultures."
                )

                AboutCard(
                    imageName: "design",
                    title: "Designer",
                    description: "I enjoy combining creativity and technology through design."
                )

            }
            .padding()
        }
        .navigationTitle("About Me")
    }
}

struct AboutCard: View {
    var imageName: String
    var title: String
    var description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 180)
                .clipped()
                .cornerRadius(15)

            Text(title)
                .font(.title2)
                .bold()

            Text(description)
                .font(.body)

        }
        .padding()
        .frame(width: 280)
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}
