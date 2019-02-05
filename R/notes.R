class(bubba) <- append(class(bubba),"Flamboyancy")

#https://bioconductor.org/help/course-materials/2013/CSAMA2013/friday/afternoon/S4-tutorial.pdf

n <- 10
m <- 6
marray <- matrix(rnorm(n * m, 10, 5), ncol = m)
pmeta <- data.frame(sampleId = 1:m,condition = rep(c("WT", "MUT"), each = 3))
rownames(pmeta) <- colnames(marray) <- LETTERS[1:m]
fmeta <- data.frame(geneId = 1:n,
                      + pathway = sample(LETTERS, n, replace = TRUE))
rownames(fmeta) <-
  + rownames(marray) <- paste0("probe", 1:n)

rownames(pmeta) <- colnames(marray) <- LETTERS[1:m]
marray


fmeta <- data.frame(geneId = 1:n,pathway = sample(LETTERS, n, replace = TRUE))
fmeta


rownames(fmeta) <-rownames(marray) <- paste0("probe", 1:n)

maexp <- list(marray = marray,fmeta = fmeta,pmeta = pmeta)
rm(marray, fmeta, pmeta) ## clean up
str(maexp)

wt<-maexp$pmeta[, "condition"]== "WT"
maexp$marray["probe8", wt]
maexp[["marray"]]["probe3", !wt]

maexp$marray
boxplot(maexp$marray)

#--------

MArray <- setClass("MArray",
                   slots = c(marray = "matrix",
                               fmeta = "data.frame",
                               pmeta = "data.frame"))

maexp
ma <- MArray(marray = maexp[[1]],
              pmeta = maexp[["pmeta"]],
             fmeta = maexp[["fmeta"]])


MArray()
show(Marray)
#------
#setting method for generic show

setMethod("show",
          signature = "MArray",
         definition = function(object) {
            cat("An object of class ", class(object), "\n", sep = "")
            cat(" ", nrow(object@marray), " features by ",
                  ncol(object@marray), " samples.\n", sep = "")
             invisible(NULL)
            })

show(ma)


methods(summary) #S3
methods(class = "aov") #S3
methods("[[")

m <- methods("dim")       # S3 and S4 methods
print(m)
print(attr(m, "info"))

#use setValidity
#use validObject

#should use replacement method

getClass("MArray")
getClassDef("MArray")
showMethods("show")
slotNames(ma)

showMethods(classes = "MArray")
getMethod("show", "MArray")


parent <- setClass(

  "parent",

  # Define the slots
  slots = c(
    wPoints="numeric"
  ),

  prototype=list(

  )
)


child <- setClass(

  "child",

  # Define the slots
  slots = c(
    bPoints="numeric"
  ),
  contains="parent"
)


c<-child(bPoints=10)
c@bPoints
c@wPoints
class(c)
