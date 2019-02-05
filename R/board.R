#board State
#you can just assign values by calling board()
# <- board() to make instance of object


board <- setClass(

  "board",

  # Define the slots
  slots = c(
    theme= "integer",
    mat="matrix",
    xlen= "integer",
    ylen="integer"
    ),

  #default is a chess set
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
    ),
    xlen=nrow(mat),
    ylen=nrow(mat)
  )
)

setValidity("board",function(obj){


})



