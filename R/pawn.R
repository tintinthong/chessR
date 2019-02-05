pawn <- setClass(

  "pawn",

  slots = c(
    turn="character",
    activePiece="character",
    coordList="list"
  ),
  contains="game" #do know whether board
)

setValidity("pawn",function(obj){


})


