import SwiftUI

struct WordsGridView: View {

    var currentRow: Int = 0
    var currentCol: Int = 0
    @EnvironmentObject var vM: GameViewModel
    
    var body: some View {
        VStack(spacing: 5) {
            ForEach(vM.grid, id: \.self) { row in
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
