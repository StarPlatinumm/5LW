import SwiftUI

struct WordsGridView: View {
    
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
        .alert(item: $vM.alertItem, content: { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: .default(alertItem.buttonTitle, action: { alertItem.action() }))
        })
    }
}


#Preview {
    WordsGridView()
}
