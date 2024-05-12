import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            WordsGridView()
            Spacer()
            Spacer()
            KeyboardView()
            Spacer()
        }
        .padding()
        .background(.black)
    }

}

#Preview {
    ContentView()
}
