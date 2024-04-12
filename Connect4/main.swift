import Foundation

let BOARD_WIDTH: Int = 7
let BOARD_HEIGHT: Int = 6

enum players {
    case Red
    case Yellow
}

struct ConnectFour {
    var board: Array = Array(repeating: Array(repeating: "⚪️", count: BOARD_WIDTH), count: BOARD_HEIGHT)
    var player: players = .Yellow

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
      for row in 0..<BOARD_HEIGHT {
          for col in 0..<BOARD_WIDTH - 3 {
              if board[row][col] != "⚪️" && board[row][col] == board[row][col + 1] && board[row][col + 1] == board[row][col + 2] && board[row][col + 2] == board[row][col + 3] {
                  return board[row][col] == "🟡" ? .Yellow : .Red
              }
          }
      }
      // check vertical
      for row in 0..<BOARD_HEIGHT - 3 {
          for col in 0..<BOARD_WIDTH {
              if board[row][col] != "⚪️" && board[row][col] == board[row + 1][col] && board[row + 1][col] == board[row + 2][col] && board[row + 2][col] == board[row + 3][col] {
                  return board[row][col] == "🟡" ? .Yellow : .Red
              }
          }
      }
      // check diagonal
      for row in 0..<BOARD_HEIGHT - 3 {
          for col in 0..<BOARD_WIDTH - 3 {
              if board[row][col] != "⚪️" && board[row][col] == board[row + 1][col + 1] && board[row + 1][col + 1] == board[row + 2][col + 2] && board[row + 2][col + 2] == board[row + 3][col + 3] {
                  return board[row][col] == "🟡" ? .Yellow : .Red
              }
          }
      }
      // check anti-diagonal
      for row in 3..<BOARD_HEIGHT {
          for col in 0..<BOARD_WIDTH - 3 {
              if board[row][col] != "⚪️" && board[row][col] == board[row - 1][col + 1] && board[row - 1][col + 1] == board[row - 2][col + 2] && board[row - 2][col + 2] == board[row - 3][col + 3] {
                  return board[row][col] == "🟡" ? .Yellow : .Red
              }
          }
      }
      
      return nil // nobody won
    }
}

func main () {
  // Creating the game object
  var game = ConnectFour()

  // Print the welcome message one time.
  game.printHeader()

  // While there is no winner
  while (game.checkWin() == nil) {
    game.printBoard()

    var isValidMove: Bool = false
    while !isValidMove {
        print("It's \(game.player)'s turn. Enter a column number (0-6): ")
        let userInput: String? = readLine()
        if let input = userInput, let column = Int(input) {
            isValidMove = game.makeMoves(column: column)
        } else {
            print("Invalid input!")
        }
    }
  }

  if let winner = game.checkWin() {
    print("Player \(winner) wins!")
  } else {
    print("It's a draw!")
  }
}

main()
