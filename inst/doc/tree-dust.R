## ----echo=FALSE,eval=FALSE----------------------------------------------------
#  options(width=80)

## ----eval=FALSE---------------------------------------------------------------
#  library(catdata)
#  data(dust)

## ----eval=FALSE---------------------------------------------------------------
#  library(rpart)

## ----fig.width=8,eval=FALSE---------------------------------------------------
#  tree1 <-rpart(as.factor(bronch) ~ years, data = dust, 	method = "class",
#                control = rpart.control(cp = 0.001,  parms=list(split='information'),
#                                        maxdepth = 4))
#  plot(tree1, xpd=TRUE)
#  text(tree1)

## ----eval=FALSE---------------------------------------------------------------
#   	pred <- predict(tree1)
#   	year<- dust$years
#   	year [dust$years<15.5] <- 1
#   	year [dust$years>15.5 & dust$years<36.5] <- 2
#   	year [dust$years>36.5 & dust$years<47.5] <- 3
#   	year [dust$years>47.5 & dust$years<50.5] <- 4 	
#   	year [dust$years>50.5] <- 5
#   	
#  pre5 <- unique( pred[,2][year==5])
#  pre4 <- unique( pred[,2][year==4])
#  pre3 <- unique( pred[,2][year==3])
#  pre2 <- unique( pred[,2][year==2])
#  pre1 <- unique( pred[,2][year==1])
#   	
#  meanyear <- c()
#  
#  for (i in min(dust$years):max(dust$years)){
#  meanyear[i] <- sum(dust$bronch[dust$year==i])
#  if(sum(dust$bronch[dust$year==i])!=0){
#  meanyear[i] <- mean(dust$bronch[dust$year==i])
#  }
#  }
#  
#  dust$means<- rep(2, nrow(dust))
#  
#   for (k in 1:nrow(dust)){
#   dust$means[k] <- meanyear[dust$years[k]]
#   }

## ----fig.width=8,eval=FALSE---------------------------------------------------
#   plot(dust$years, dust$means, xlab="years",ylab="")
#   segments(x0=3,x1=15.5,y0=pre1)
#   segments(x0=15.5,x1=15.5,y0=pre1,y1=pre2)
#   segments(x0=15.5,x1=36.5,y0=pre2)
#   segments(x0=36.5,x1=36.5,y0=pre2,y1=pre3)
#   segments(x0=36.5,x1=47.5,y0=pre3)
#    segments(x0=47.5,x1=47.5,y0=pre3,y1=pre4)
#   segments(x0=47.5,x1=50.5,y0=pre4)
#    segments(x0=50.5,x1=50.5,y0=pre4,y1=pre5)
#   segments(x0=50.5,x1=66,y0=pre5)

## ----eval=FALSE---------------------------------------------------------------
#  library(party)

## ----fig.width=8,eval=FALSE---------------------------------------------------
#  treeP1 <-ctree(as.factor(bronch) ~ years, data = dust)
#  plot(treeP1)

## ----eval=FALSE---------------------------------------------------------------
#   	year<- dust$years
#   	year [dust$years<7.5] <- 1
#   	year [dust$years>7.5 & dust$years<15.5] <- 2
#   	year [dust$years>15.5 & dust$years<36.5] <- 3
#   	year [dust$years>36.5] <- 4
#   	
#  pre4 <- mean(dust$bronch[year==4])
#  pre3 <- mean(dust$bronch[year==3])
#  pre2 <- mean(dust$bronch[year==2])
#  pre1 <- mean(dust$bronch[year==1])

## ----fig.width=8,eval=FALSE---------------------------------------------------
#   plot(dust$years, dust$means, xlab="years",ylab="")
#   segments(x0=3,x1=7.5,y0=pre1)
#   segments(x0=7.5,x1=7.5,y0=pre1,y1=pre2)
#   segments(x0=7.5,x1=15.5,y0=pre2)
#   segments(x0=15.5,x1=15.5,y0=pre2,y1=pre3)
#   segments(x0=15.5,x1=36.5,y0=pre3)
#    segments(x0=36.5,x1=36.5,y0=pre3,y1=pre4)
#   segments(x0=36.5,x1=66,y0=pre4)
#  

## ----fig.width=8,eval=FALSE---------------------------------------------------
#  treeP2 <-ctree(as.factor(bronch) ~ smoke + years + dust, data = dust)
#  plot(treeP2)

## ----echo=FALSE,results='hide',eval=FALSE-------------------------------------
#  detach(package:rpart)
#  detach(package:party)

