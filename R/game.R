game <- setClass(

  "game",

  # Define the slots
  slots = c(
    wPoints= "integer",
    bPoints="integer",
    wTimeLimit="numeric",
    bTimeLimit="numeric",
    state="character", #standard, check, checkmate
    turn="character",
    activePiece="list"
  ),

  prototype=list(
    wPoints=0,
    bPoints=0,
    time=0,
    state="normal",
    turn="white"
    #,
    #activePiece=as.list(c("e",5))
  ),
  check=function(object)
  {

    return(TRUE)
  },
  contains="board"
)


