#' Game Class
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(100)



game <- setClass(

  "game",

  # Define the slots
  slots = c(

    #settings
    wTimeLimit="numeric",
    bTimeLimit="numeric",

    turn="character",
    moveNumber="numeric",
    wPoints= "numeric",
    bPoints="numeric",

    state="character", #(standard, check, checkmate,stalemate),
    mat="matrix",

    activePiece="character",
    coordList="list",
    coordVec=c("numeric","numeric")

  ),

  prototype=list(

    #settings
    wTimeLimit=10,
    bTimeLimit=10,

    #varied settings
    turn="white",
    moveNumber=1,
    wPoints=0,
    bPoints=0,

    state="standard",
    mat= matrix(
      c("R","H","B","K","Q","B","H","R",
        "p","p","p","p","p","p","p","p",
        NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,
        "p","p","p","p","p","p","p","p",
        "R","H","B","Q","K","B","H","R"),8,byrow=TRUE,
      dimnames=list(8:1,tolower(LETTERS[1:8]))
    )

  ),
  validity=function(object){
     NULL
  }
)


setMethod (
  f="initialize",
  signature="game",
  definition=function(.Object){

    validObject(.Object) # call of the inspector
    return(.Object)
  }

)





