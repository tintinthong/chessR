#board State
#you can just assign values by calling board()
# <- board() to make instance of object
board <- setClass(

  "board",

  # Define the slots
  slots = c(
    theme= "integer",
    xlen= "integer",
    ylen="integer",
    mat="matrix", # all columns must be either character or numeric
    chosenPiece=c("integer","integer") #has to be within boundaries of board
     ),

  # Set the default values for the slots. (optional)
  # default is a chess set
  prototype=list(
    theme="integer",
    mat= matrix(
      c("R","H","B","K","Q","B","H","R",
      "p","p","p","p","p","p","p","p",
      NA,NA,NA,NA,NA,NA,NA,NA,
      NA,NA,NA,NA,NA,NA,NA,NA,
      NA,NA,NA,NA,NA,NA,NA,NA,
      NA,NA,NA,NA,NA,NA,NA,NA,
      "p","p","p","p","p","p","p","p",
      "R","H","B","Q","K","B","H","R"),xlen,byrow=TRUE,
      dimnames=list(tolower(LETTERS[ylen]))
    )#https://en.wikipedia.org/wiki/Chess_symbols_in_Unicode,
    xlen=nrow(mat),
    ylen=nrow(mat)
  ),

  # Make a function that can test to see if the data is consistent.
  # This is not called if you have an initialize function defined!
  check=function(object)
  {

    return(TRUE)
  }
)





