# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS {
  [0,2,3],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [3,5,8],
  [0,4,8],
  [3,4,6]
}


def won(board)
  WIN_COMBINATIONS.each do |item|
    item.each do |index|
      if board[index] == "X" && board[index] == "O"
         return item
       else
         false
       end
     end
   end

end
