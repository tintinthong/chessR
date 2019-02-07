#
# setGeneric(name="printBoard",
#            def=function(obj,...)
#            {
#              standardGeneric("printBoard")
#            }
# )
#
# setMethod(f="printBoard",
#           signature="board",
#           definition=function(obj,...)
#           {
#             #some graphing
#             return(obj@mat)
#           }
# )
