# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Top left diagonal
  [6,4,2],  # Top right diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      win = true
      return win_combination
    else
      win = false
    end
  end
  if win = false
    return win
  end
end

def full?(board)
  full = true
  board.each do |i|
    if i == " "
      full = false
    end
  end
  full
end

def draw?(board)
  draw = false
  if !won?(board) && full?(board)
    draw = true
  else
    draw = false
  end
  draw
end

def over?(board)
  if won?(board) == true || over?(board) == true
    true
  end
end

def winner?(board)
  if won?(board) == true
    if win_combination[1] == "X" && win_combination[2] == "X" && win_combination[3] == "X"
      puts "X"
    else
      puts "O"
    end
  else
    nil
  end
end
