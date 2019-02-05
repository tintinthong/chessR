setGeneric(name="move",
           def=function(obj,...) #always include dots
           {
             standardGeneric("move")
             #generically update game class
           }
)

setMethod(f="move",
          signature="pawn",
          definition=function(obj,...)
          {
            if(is.na(obj@mat[xCoord,yCoord])){
              print("Selected coordinate without piece")
              return(FALSE)
            }
            return(obj)
          }

)


setMethod(f="move",
          signature="board",
          definition=function(obj,startCoord,endCoord,...)
          {
            start=obj@chosen
            as.list(substring("A1",1:2,1:2))


            #change state to check

            return(obj)
          }

)
