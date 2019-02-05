#show method for displaying S4 objects

setMethod("show", "board",
          function(object)print(rbind(x = object@x, y=object@y))
)


setMethod("show", "game",
          function(object)print(rbind(x = object@x, y=object@y))
)


args(show) #args of method has to have same arguments as generic

show


setMethod("show",signature = "MArray",definition = function(object) {
              cat("An object of class ", class(object), "\n", sep = "")
              cat(" ", nrow(object@marray), " features by ",ncol(object@marray), " samples.\n", sep = "")
               invisible(NULL)
              })


#use ... for function set Generic
