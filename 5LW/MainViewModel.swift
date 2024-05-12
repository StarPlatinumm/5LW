import SwiftUI

final class GameViewModel: ObservableObject {
    
    @Published var grid: [[String]] = Array(repeating: Array(repeating: "", count: 5), count: 6)
    @Published var alertItem: AlertItem?
    private var theWord: String = "apple"
    private var currentRow: Int = 0
    private var currentCol: Int = 0
    private var currentRowWord: String {
        String(grid[currentRow].joined()).lowercased()
    }
    
    func typeLetter(letter: String) {
        if currentCol < grid[currentRow].count && grid[currentRow][currentCol] == "" {
            grid[currentRow][currentCol] = letter
            currentCol += 1
        }
    }
    
    func deleteLetter() {
        if currentCol > 0 {
            currentCol -= 1
        }
        grid[currentRow][currentCol] = ""
    }
    
    func wordSubmitted() {
        if isValid() {
            if isGuessed() {
                alertItem = AlertItem(
                    title: Text(":)"),
                    message: Text("You guessed it!"),
                    buttonTitle: Text("Ok"),
                    action: resetGame
                )
            } else {
                if currentRow < grid.count - 1 {
                    currentRow += 1
                    currentCol = 0
                } else {
                    alertItem = AlertItem(
                        title: Text(":'("),
                        message: Text("You didn't guess it, sorry"),
                        buttonTitle: Text("Ok"),
                        action: resetGame
                    )
                }
            }
            
        } else {
            alertItem = AlertItem(
                title: Text(":("),
                message: Text("This word is invalid"),
                buttonTitle: Text("Ok"),
                action: {}
            )
        }
    }
    
    func isValid() -> Bool {
        return grid[currentRow].count == 5 && ALL_WORDS.contains(currentRowWord)
    }
    
    func isGuessed() -> Bool {
        return currentRowWord == theWord
    }
    
    func resetGame() {
        grid = Array(repeating: Array(repeating: "", count: 5), count: 6)
        alertItem = nil
        theWord = "APPLE"
        currentRow = 0
        currentCol = 0
    }
}
