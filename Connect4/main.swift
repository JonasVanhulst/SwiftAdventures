import Foundation

let BOARD_WIDTH = 7
let BOARD_HEIGHT = 6

enum players {
    case Red
    case Yellow
}

struct ConnectFour {
    var board = Array(repeating: Array(repeating: "⚪️", count: BOARD_WIDTH), count: BOARD_HEIGHT)
    var player: players = .Red

    /**
     * Function to print the header at the start of each game
     */
    func printHeader() {
        print("""
             _____                             _       ___
            /  __ \\                           | |     /   |
            | /  \\/ ___  _ __  _ __   ___  ___| |_   / /| |
            | |    / _ \\| '_ \\| '_ \\ / _ \\/ __| __| / /_| |
            | \\__/\\ (_) | | | | | | |  __/ (__| |_  \\___  |
             \\____/\\___/|_| |_|_| |_|\\___|\\___|\\__|     |_/
        """)
        print("+-------------------------------------------------------------------+")
        print("| Connect 4, made by Jonas Vanhulst                                 |")
        print("+-------------------------------------------------------------------+")
        print(" ")
    }
  
    /**
     * Function do a move with checks on the movements
     * @param column
     * @return true/false if move was ok
     */
    mutating func makeMoves(column: Int) -> Bool {
        guard column >= 0 && column <= BOARD_HEIGHT else {
            print("[ERROR] - Invalid column range")
            return false
        }

        for row in stride(from: BOARD_HEIGHT - 1, through: 0, by: -1) {
            if board[row][column] == "⚪️" {
                switch player {
                case .Red:
                    board[row][column] = "🔴"
                    player = .Yellow
                case .Yellow:
                    board[row][column] = "🟡"
                    player = .Red
                }
                return true
            }
        }
        print("[WARNING] - Column \(column) is full. Choose another column.")
        return false
    }

    /**
     * Print game board with the limits from the array
     */
    func printBoard() {
        for row in board {
            // setting spaces between the columns
            print(row.joined(separator: " "))
        }
        print("0️⃣  1️⃣  2️⃣  3️⃣  4️⃣  5️⃣  6️⃣")
    }

    /**
     * Function to check the surrounding bolls
     * @return player
     */    
    func checkWin() -> players? {
        // check horizontal
        // check vertical
        // check diagonal
        // check anti-diagonal
        return nil // nobody won
    }
}

func main () {
  let game = ConnectFour()

  game.printHeader()
  game.printBoard()
}

main()
