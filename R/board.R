#' Board Class
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(100) sdfs
#' @include game.R


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
  )
  ,
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





