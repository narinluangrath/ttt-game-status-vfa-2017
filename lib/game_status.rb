# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    combo.all?{ |index| board[index] == "X" } ||
    combo.all?{ |index| board[index] == "O" }
  end
end

def full?(board)
  return board.none?{ |e| e == " " || e == "" || e == nil}
end

def draw?(board)
  return full?(board) && !won?(board)
end

def over?(board)
  return won?(board) || full?(board)
end

def winner(board)
  w = won?(board)
  return w ? board[w[0]] : w
end
