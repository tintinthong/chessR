
#' drawBoard
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(100) sdfs
#' @import ggplot2

setGeneric(name="move",
           def=function(object,...) #always include dots
           {
             standardGeneric("move")
           }
)

setMethod(f="move",
          signature="pawn",
          definition=function(object,coordVec,coordVec2)
          {
            #check that it is the correct turn or side piece is selected

            #check that there is a non-empty space

            #check that where it is going an empty space or not

            #check that it is a valid travel (ie no other colored pieces come into contact)
            #check that no piece is blocking (except for the knight)

            #check what is the character in the matrix and assign the kill
            #check if there is a check or not

            # change variable for next turn

            return(object)
          }

)

#
# setMethod(f="move",
#           signature="board",
#           definition=function(object,startCoord,endCoord,...)
#           {
#             start=object@chosen
#             as.list(substring("A1",1:2,1:2))
#
#
#             #change state to check
#
#             return(object)
#           }
#
# )
