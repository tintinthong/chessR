
#create Rmd files for documentation
#devtools::document()

#load packages in import of DESCRIPTION file
#devtools::use_package("ggplot2")



getswifty<-function(){
  devtools::document()
  devtools::load_all(".")
}
