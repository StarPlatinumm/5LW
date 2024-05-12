import SwiftUI

struct KeyboardView: View {
    
    @EnvironmentObject private var vM: GameViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 5) {
                ForEach(["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"], id: \.self) { key in
                    KeyView(letter: key, action: vM.typeLetter)
                }
            }
            HStack(spacing: 5) {
                ForEach(["A", "S", "D", "F", "G", "H", "J", "K", "L"], id: \.self) { key in
                    KeyView(letter: key, action: vM.typeLetter)
                }
            }
            HStack(spacing: 5) {
                KeyView(icon: "checkmark", action: vM.wordSubmitted)
                
                ForEach(["Z", "X", "C", "V", "B", "N", "M"], id: \.self) { key in
                    KeyView(letter: key, action: vM.typeLetter)
                }
                
                KeyView(icon: "delete.left", action: vM.deleteLetter)
            }
        }
    }
}

#Preview {
    KeyboardView()
}
