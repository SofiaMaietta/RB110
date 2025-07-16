# April 12, 2025

# Write a method that takes a multi-dimensional array representing a tic-tac-toe board and returns the winner ('X', 'O', or nil if no winner).

def tictactoe_winner(board)
  one = board[0][0]
  two = board[0][1]
  three = board[0][2]
  four = board[1][0]
  five = board[1][1]
  six = board[1][2]
  seven = board[2][0]
  eight = board[2][1]
  nine = board[2][2]

  winning_lines = [[one, two, three], [four, five, six], [seven, eight, nine]] + # rows
                  [[one, four, seven], [two, five, eight], [three, six, nine]] + # columns
                  [[one, five, nine], [three, five, seven]]                      # diagonals

  if winning_lines.any? { |group| group == ["O", "O", "O"] }
    return "O"
  elsif winning_lines.any? { |group| group == ["X", "X", "X"] }
    return "X"
  else 
    nil 
  end 
end 

p tictactoe_winner([
  ['X', 'O', 'X'],
  ['O', 'X', 'O'],
  ['O', 'O', 'X']
]) == 'X' # => true 

p tictactoe_winner([
  ['O', 'O', 'X'],
  ['O', 'X', 'O'],
  ['O', 'O', 'X']
]) == 'O' # => true 

p tictactoe_winner([
  ['O', 'O', 'X'],
  ['X', 'X', 'O'],
  ['O', 'O', 'X']
]) == nil # => true