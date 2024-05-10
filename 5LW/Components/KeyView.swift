import SwiftUI

struct KeyView: View {
    
    let letter: String
    let icon: String
    
    init(letter: String) {
        self.letter = letter
        self.icon = ""
    }
    
    init(icon: String) {
        self.icon = icon
        self.letter = ""
    }
    
    var body: some View {
        if (icon == "") {
            ZStack {
                RoundedRectangle(cornerRadius: 3)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(.pink, lineWidth: 2)
                    )
                    .frame(width: 30, height: 50)
                
                Text(letter)
                    .font(.system(size: min(50, 50) / 2))
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
            }
        } else {
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

#Preview {
    Group {
        KeyView(letter: "K")
        KeyView(icon: "delete.left")
        KeyView(icon: "checkmark")
    }
    
}
