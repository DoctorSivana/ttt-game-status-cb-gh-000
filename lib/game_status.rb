# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS [
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
  WIN_COMBINATIONS.each do |item|
    item.each do |index|
      if board[index] == "X" || board[index] == "O"
         return item
       else
         false
       end
     end
   end

end

def full?(board)
  all_full = true
  board.each do |item|
    if item == "" || item == nil || item == " "
      return true
    else
      false
    end
  end

  end

end

def draw(board)
  if full?(board) || won?(board)
    false
  elsif true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    won?(board).item do |item|
      item.each do |items|
        if items == "X"
          return "X"
        elsif items == "O"
          return "O"
        else nil
        end
      end
    end
  end
end


    end

  end
