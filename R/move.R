setGeneric(name="touch",
           def=function(obj,...)
           {
             standardGeneric("touch")
           }
)


setMethod(f="touch",
          signature="game",
          definition=function(obj,coordStr,...)
          {
            coordLs<-strToCoord(coordStr)

            return(obj)


          }

)


setMethod(f="select",
          signature="board",
          definition=function(obj,xCoord,yCoord,...)
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
