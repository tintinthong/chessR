bishop <- setClass(

  "bishop",

  # Define the slots
  slots = c(
    xcoord= "integer",
    ycoord= "integer",
    alive= "logical",
    white= "logical"
  ),

  # Set the default values for the slots. (optional)
  prototype=list(
    alive=TRUE
  ),

  # Make a function that can test to see if the data is consistent.
  # This is not called if you have an initialize function defined!
  validity=function(object)
  {
    if(sum(object@velocity^2)>100.0) {
      return("The velocity level is out of bounds.")
    }
    return(TRUE)
  }
)


setMethod(f="move",
          signature="board",
          definition=function(obj,start,end,...)
          {
            start=obj@chosen


            #change state to check

            return(obj)
          }

)
