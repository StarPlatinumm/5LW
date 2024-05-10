import SwiftUI

struct LetterView: View {
    
    let letter: String
    let guessed: LetterGuessed
    var fillColor: Color {
        switch guessed {
            case .yes: return .green
            case .no: return .gray
            case .almost: return .yellow
            case .none: return .black
        }
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 2)
                .fill(fillColor)
                .frame(width: 60, height: 60)
                .padding(1)
                .overlay(
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(.gray, lineWidth: 2)
                )
            
            Text(letter)
                .font(.system(size: min(50, 50) / 2))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        
    }
}

enum LetterGuessed {
    case yes
    case no
    case almost
    case none
}

#Preview {
    LetterView(letter: "W", guessed: .yes)
}
