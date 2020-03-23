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
  WIN_COMBINATIONS.detect do |winning_com|
    board[winning_com[0]] == board[winning_com[1]] &&
    board[winning_com[1]] == board[winning_com[2]] &&
    position_taken?(board,winning_com[0])
    end
end
def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end
def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end

def winner(board)
  index = []
  index = won?(board)
  if index == false
    return nil
  elsif board[index[0]] == "X"
    return "X"
  elsif board[index[0]] != "X" board[index[0]] != "O"
  return nil
else
   return false
  end
end
