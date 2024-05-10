import SwiftUI

struct KeyboardView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 5) {
                ForEach(["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"], id: \.self) { key in
                    KeyView(letter: key)
                }
            }
            HStack(spacing: 5) {
                ForEach(["A", "S", "D", "F", "G", "H", "J", "K", "L"], id: \.self) { key in
                    KeyView(letter: key)
                }
            }
            HStack(spacing: 5) {
                KeyView(icon: "checkmark")
                
                ForEach(["Z", "X", "C", "V", "B", "N", "M"], id: \.self) { key in
                    KeyView(letter: key)
                }
                
                KeyView(icon: "delete.left")
            }
        }
    }
}

#Preview {
    KeyboardView()
}
