import SwiftUI

struct WordsGridView: View {
    var grid: [[String]] = Array(repeating: Array(repeating: "", count: 5), count: 6)
    
    var body: some View {
        VStack(spacing: 5) {
            ForEach(grid, id: \.self) { row in
                HStack(spacing: 5) {
                    ForEach(row, id: \.self) { letter in
                        LetterView(letter: letter, guessed: .none)
                    }
                }
            }
        }
        .padding()
    }
}


#Preview {
    WordsGridView()
}
