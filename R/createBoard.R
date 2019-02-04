setGeneric(name="createBoard",
           def=function(obj,mat,auto=TRUE,...)
           {
             standardGeneric("createBoard")
           }
)

setMethod(f="createBoard",
          signature="board",
          definition=function(obj,mat,...)
          {
            obj@mat<-mat
            obj@xlen<-nrow(mat)
            obj@ylen<-ncol(mat)
            #if(is.na(obj@mat)){
            #  obj@mat<-array(0,dim=c(obj@xlen,obj@ylen,obj@xlen))
            #}
            check(obj)
            return(obj)
          }
)
