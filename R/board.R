#board State
#you can just assign values by calling board()
# <- board() to make instance of object or new


board <- setClass(

  "board",

  # Define the slots
  slots = c(
    theme= "integer",
    xlen= "integer",
    ylen="integer"
    ),

  prototype=list(
    theme=as.integer(1)
  ),
  contains="game"
)

setValidity("board",
  method=function(object){
    NULL
  }
)


setMethod (
  f="initialize",
  signature="board",
  definition=function(.Object){
    .Object@xlen=nrow(.Object@mat)
    .Object@ylen=ncol(.Object@mat)
    #automatically calls validObject
    return(.Object)
  }

)





