import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Hello, Wordle!")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "chart.bar.doc.horizontal")
            Image(systemName: "gearshape")
            Image(systemName: "questionmark.circle")
        }
        .foregroundColor(.white)
        .padding(5)
    }
}

#Preview {
    VStack {
        HeaderView()
    }
    .padding()
    .background(.black)
}
