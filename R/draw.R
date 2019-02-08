#' draw
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(100) sdfs
#' @include game.R
#' @export draw


setGeneric(name="draw",
           def=function(object,...)
           {
             standardGeneric("draw")
           }
)

setMethod (
  f="draw",
  signature="board",
  definition=function(object){
    drawBoard(object@xlen,object@ylen)

  }

)


setMethod (
  f="draw",
  signature="pawn",
  definition=function(object){

  }

)


setMethod (
  f="draw",
  signature="horse",
  definition=function(object){

  }

)

setMethod (
  f="draw",
  signature="bishop",
  definition=function(object){

  }

)

setMethod (
  f="draw",
  signature="queen",
  definition=function(object){

  }

)

setMethod (
  f="draw",
  signature="king",
  definition=function(object){

  }

)

setMethod (
  f="draw",
  signature="rook",
  definition=function(object){

  }

)
