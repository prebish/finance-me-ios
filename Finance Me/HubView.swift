import SwiftUI

struct HubView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Top Card: Progress Graph
            ProgressCardView()
                .frame(height: 200)
                .padding(.horizontal)

            // Bottom Row: Two Smaller Cards
            HStack(spacing: 20) {
                InfoCardView(title: "Card 1", detail: "Detail 1")
                InfoCardView(title: "Card 2", detail: "Detail 2")
            }
            .frame(height: 150)
            .padding(.horizontal)
        }
        .padding(.top)
    }
}

struct ProgressCardView: View {
    var body: some View {
        VStack {
            Text("Progress Graph")
                .font(.headline)
            Spacer()
            // Placeholder for a graph
            Rectangle()
                .fill(Color.blue.opacity(0.3))
                .frame(height: 100)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct InfoCardView: View {
    var title: String
    var detail: String

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
            Spacer()
            Text(detail)
                .font(.subheadline)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    HubView()
}
