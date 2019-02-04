pawn <- setClass(

  "pawn",

  # Define the slots
  slots = c(
    #theme= "integer",
    #xlen= "integer",
    #ylen="integer",
    #mat="matrix", # all columns must be either character or numeric
    #chosenPiece=c("integer","integer") #has to be within boundaries of board
  ),

  # Set the default values for the slots. (optional)
  # default is a chess set
  prototype=list(
    #theme="integer",

  ),

  # Make a function that can test to see if the data is consistent.
  # This is not called if you have an initialize function defined!
  check=function(object)
  {

    return(TRUE)
  }
)


setMethod(f="move",
          signature="pawn",
          definition=function(obj,...)
          {
            coord<-obj@coord

            check(obj)
            return(obj)

          },
          contains="board"
)
