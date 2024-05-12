import SwiftUI

final class GameViewModel: ObservableObject {
    
    @Published var grid: [[String]] = Array(repeating: Array(repeating: "Q", count: 5), count: 6)
    
    func setFirstLetter(letter: String) {
        grid[0][0] = letter
    }

}
