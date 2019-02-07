library(ggplot2)

df <- data.frame(
  x = rep(c(2, 5, 7, 9, 12), 2),
  y = rep(c(1, 2), each = 5),
  z = factor(rep(1:5, each = 2)),
  w = rep(diff(c(0, 4, 6, 8, 10, 14)), 2)
)

df$x
df$y

ggplot(df, aes(x, y)) +
  geom_tile(aes(fill = z), colour = "grey50")


df <- data.frame(
  letters= rep(LETTERS[1:8],8),
  z = factor(rep(1:2, 32))
)

ggplot(df, aes(letters, colIndex,width=1)) +
  geom_tile(aes(fill = z))


#--------


createBoard<-function(numberCol,numberRow){
  df<-expand.grid(1:numberCol,1:numberRow)
  colnames(df)[1]<-"col"
  colnames(df)[2]<-"row"
  df$colour<-NA
  for(i in 0:(numberRow-1)){
    print(paste("i=",i))


    df$colour[(i*numberCol+1):(i*numberCol+numberCol)]<-if(i%%2==0){
      rep(c(0,1),length.out=numberCol)
    }else{
      rep(c(1,0),length.out=numberCol)
    }

  }
  df$colour<-as.factor(df$colour)

  ggplot(df, aes(LETTERS[df$col], row)) +geom_tile(aes(fill=colour),color="black",show.legend=FALSE)+scale_fill_manual(values=c("black","white"))+labs(x="Rows",y="Cols")

}


f(10,10)


df$colour<-as.factor(df$colour) #don't know why it is not integer




#-------
x<-ifelse(10%%2==0,rep(c(0,1),length.out=numberCol),rep(c(1,0),length.out=numberCol))
x
rep(c(0,1),length.out=numberCol)
rep(c(1,0),length.out=numberCol)
df

df$colour[1:3]<-c(1,0)
replicate(c(1,0), shift)

shift
replicate


ggplot(df,aes(x=Var1,y=Var2,fill=value))+geom_tile(show.legend=FALSE)+scale_fill_manual(values=c("black","white"))






#------------
library(reshape2)
library(ggplot2)
numberRow<-7
numberCol<-8
mx <- outer(1:n,1:n-1,"+")%%2

outer(1:n,1:n-1,"+")
outer(rep(c(0,1),floor(numberRow/2)))

outer(rep(c(0,1),length.out=8), rep(c(0,1),length.out=8),"*")


numberRow<-3
numberCol<-2
matrix(rep(c(0,1,0),length.out=numberRow*numberCol),nrow=numberRow,ncol=numberCol,byrow=TRUE)

numberRow<-4
numberCol<-4
matrix(rep(c(0,1),length.out=numberRow*numberCol),nrow=numberRow,ncol=numberCol)


outer(rep(c(0,1),length.out=numberRow),rep(c(1,0),length.out=numberCol),"*")

rep(c(0,1),length.out=numberCol)
rep(c(0,1),length.out=numberRow)

function()

  matrix(rep(c(TRUE, FALSE),floor(numberCol*numberRow/2)), nrow=numberRow, ncol=numberCol)


outer(1:n,1:n-1,"+")%%2
outer(1,2)

matrix(rep(c(TRUE, FALSE),floor(numberCol*numberRow/2)), nrow=numberRow, ncol=numberCol,byrow=TRUE)

matrix(rep(c(TRUE,FALSE)),nrow=3,ncol=3)


df<-melt(mx) # will get warning
df$Var1<-LETTERS[df$Var1]
df
ggplot(df,aes(x=Var1,y=Var2,fill=value))+geom_tile(show.legend=FALSE)+scale_fill_manual(values=c("black","white"))

df<-melt(mx)




ggplot(df, aes(col, row)) +
  geom_tile(aes(fill = df$index %%2==0 ),show.legend = FALSE)+
  scale_fill_manual(values=c("black","white"))

rowType<-ifelse((1:numberRow)%%2==0,1,2)
df$color<-rep(1:2,numberCol/2)

  factor(rep(c(rep(1:2,numberCol/2),rep(2:1,numberCol/2)),numberRow/2))
colnames(df)[1]<-"col"
colnames(df)[2]<-"row"



factor(rep(c(rep(1:2,numberCol/2),rep(2:1,numberCol/2)),numberRow/2))

x<-1:numberRow

ifelse(x%%2==0,10,1)



sapply(x,)

foo <- function(x = 1, y = 2) c(x, y)

ggplot(df, aes(col, row)) +
  geom_tile(aes(fill = color),show.legend = FALSE)+
  scale_fill_manual(values=c("black","white"))

#do not display legend

mat


