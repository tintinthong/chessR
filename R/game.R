game <- setClass(

  "game",

  # Define the slots
  slots = c(
    wPoints= "integer",
    bPoints="integer",
    wTimeLimit="numeric",
    bTimeLimit="numeric",
    state="character", #(standard, check, checkmate)
    turn="character",
    activePiece="character",
    coordList="list"
  ),

  prototype=list(
    wPoints=0,
    bPoints=0,
    time=0,
    state="standard",
    turn="white",
    activePiece="e5",
    coordList=strToCoord(activePiece)
  )
)



