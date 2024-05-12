import SwiftUI

struct KeyView: View {
    
    @EnvironmentObject private var vM: GameViewModel
    let letter: String?
    let icon: String?
    let letterKeyAction: ((String) -> Void)?
    let iconKeyAction: (() -> Void)?
    
    init(letter: String, action: @escaping (String) -> Void) {
        self.letter = letter
        self.icon = nil
        self.letterKeyAction = action
        self.iconKeyAction = nil
    }
    
    init(icon: String, action: @escaping () -> Void) {
        self.letter = nil
        self.icon = icon
        self.letterKeyAction = nil
        self.iconKeyAction = action
    }
    
    var body: some View {
        if let letter, let letterKeyAction {
            Button(action: { letterKeyAction(letter) }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 3)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(.pink, lineWidth: 2)
                        )
                        .frame(width: 30, height: 50)
                    
                    Text(letter)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                }
            }
        } else if let icon, let iconKeyAction {
            Button(action: { iconKeyAction() }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 3)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(.pink, lineWidth: 2)
                        )
                        .frame(width: 50, height: 50)
                    
                    Image(systemName: icon)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

//#Preview {
//    Group {
//        KeyView(letter: "K")
//        KeyView(icon: "delete.left")
//        KeyView(icon: "checkmark")
//    }
//    
//}
