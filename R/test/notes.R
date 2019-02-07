#
# Ctrl+Shift+C
#class(bubba) <- append(class(bubba),"Flamboyancy")
#
# #https://bioconductor.org/help/course-materials/2013/CSAMA2013/friday/afternoon/S4-tutorial.pdf
#
# n <- 10
# m <- 6
# marray <- matrix(rnorm(n * m, 10, 5), ncol = m)
# pmeta <- data.frame(sampleId = 1:m,condition = rep(c("WT", "MUT"), each = 3))
# rownames(pmeta) <- colnames(marray) <- LETTERS[1:m]
# fmeta <- data.frame(geneId = 1:n,
#                       + pathway = sample(LETTERS, n, replace = TRUE))
# rownames(fmeta) <-
#   + rownames(marray) <- paste0("probe", 1:n)
#
# rownames(pmeta) <- colnames(marray) <- LETTERS[1:m]
# marray
#
#
# fmeta <- data.frame(geneId = 1:n,pathway = sample(LETTERS, n, replace = TRUE))
# fmeta
#
#
# rownames(fmeta) <-rownames(marray) <- paste0("probe", 1:n)
#
# maexp <- list(marray = marray,fmeta = fmeta,pmeta = pmeta)
# rm(marray, fmeta, pmeta) ## clean up
# str(maexp)
#
# wt<-maexp$pmeta[, "condition"]== "WT"
# maexp$marray["probe8", wt]
# maexp[["marray"]]["probe3", !wt]
#
# maexp$marray
# boxplot(maexp$marray)
#
# #--------
#
# MArray <- setClass("MArray",
#                    slots = c(marray = "matrix",
#                                fmeta = "data.frame",
#                                pmeta = "data.frame"))
#
# maexp
# ma <- MArray(marray = maexp[[1]],
#               pmeta = maexp[["pmeta"]],
#              fmeta = maexp[["fmeta"]])
#
#
# MArray()
# show(Marray)
# #------
# #setting method for generic show
#
# setMethod("show",
#           signature = "MArray",
#          definition = function(object) {
#             cat("An object of class ", class(object), "\n", sep = "")
#             cat(" ", nrow(object@marray), " features by ",
#                   ncol(object@marray), " samples.\n", sep = "")
#              invisible(NULL)
#             })
#
# show(ma)
#
#
# methods(summary) #S3
# methods(class = "aov") #S3
# methods("[[")
#
# m <- methods("dim")       # S3 and S4 methods
# print(m)
# print(attr(m, "info"))
#
# #use setValidity
# #use validObject
#
# #should use replacement method
#
# getClass("MArray")
# getClassDef("MArray")
# showMethods("show")
# slotNames(ma)
#
# showMethods(classes = "MArray")
# getMethod("show", "MArray")
#
#
# parent <- setClass(
#
#   "parent",
#
#   # Define the slots
#   slots = c(
#     wPoints="numeric"
#   ),
#
#   prototype=list(
#
#   )
# )
#
#
# child <- setClass(
#
#   "child",
#
#   # Define the slots
#   slots = c(
#     bPoints="numeric"
#   ),
#   contains="parent"
# )
#
#
# c<-child(bPoints=10)
# c@bPoints
# c@wPoints
# class(c)
#
# new("Person", name = "Hadley", age = 31)
#
# getSlots("Person")
# slot(hadley, "age")
#
# check_person <- function(object) {
#   errors <- character()
#   length_age <- length(object@age)
#   if (length_age != 1) {
#     msg <- paste("Age is length ", length_age, ".  Should be 1", sep = "")
#     errors <- c(errors, msg)
#   }
#
#   length_name <- length(object@name)
#   if (length_name != 1) {
#     msg <- paste("Name is length ", length_name, ".  Should be 1", sep = "")
#     errors <- c(errors, msg)
#   }
#
#   if (length(errors) == 0) TRUE else errors
# }
# setClass("Person", representation(name = "character", age = "numeric"),
#          validity = check_person)
# # But note that the check is not automatically applied when we modify
# # slots directly
# hadley <- new("Person", name = "Hadley", age = 31)
# hadley@age <- 1:10
#
# # Can force check with validObject:
# validObject(hadley)
# # invalid class "Person" object: Age is length 10.  Should be 1
#
# #primitive class types
# #character.
# #numeric (real numbers)
# #integer.
# #complex.
# #logical (True/False)#
#
# # Data types / derived class types
# #Vectors
# #Matrix
# #Arrays
# #Data Frames
# #Lists
# #Factors
#
#
# foo <- structure(list(x = 1), class = "foo") #s3 class
# setOldClass("foo")
# setMethod("type", signature("foo"), function(x) "foo") #got error
#
#
#
# setClass("A")
# setClass("A1", contains = "A")
# setClass("A2", contains = "A1")
# setClass("A3", contains = "A2")
#
# setGeneric("foo", function(a, b) standardGeneric("foo"))
# setMethod("foo", signature("A1", "A2"), function(a, b) "1-2") #class of both arguments A1 and A2
# setMethod("foo", signature("A2", "A1"), function(a, b) "2-1")
#
# foo(new("A2"), new("A2"))
#
# getClass("A")
#
#
# setMethod("foo", signature("A2", "A2"), function(a, b) "2-2")
# foo(new("A2"), new("A2"))
#
# showMethods(classes = "A1")
# showMethods(classes= "matrix")
#
# library("Matrix")
# detach(Matrix)
# showMethods("%*%")#
#
# #how to use showMethods
#
# representation(name="character",age="numeric") #this creates a list
#
#
# #----
#
# setClass("Vehicle")
# setClass("Truck", contains = "Vehicle")
# setClass("Car", contains = "Vehicle")
#
# setClass("Inspector", representation(name = "character"))
# setClass("StateInspector", contains = "Inspector")
#
# setGeneric("inspect.vehicle", function(v, i) {
#   standardGeneric("inspect.vehicle")
# })
#
# setMethod("inspect.vehicle",
#           signature(v = "Vehicle", i = "Inspector"),
#           function(v, i) {
#             message("Looking for rust")
#           })
#
# setMethod("inspect.vehicle",
#           signature(v = "Car", i = "Inspector"),
#           function(v, i) {
#             callNextMethod() # perform vehicle inspection
#             message("Checking seat belts")
#           })
#
# inspect.vehicle(new("Car"), new("Inspector"))
#
# #what are group generic function
# #ops + [[]]
#
# rm(list=ls())
