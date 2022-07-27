anes<-read.csv(file="/Users/jiayiwu/Downloads/anes.csv",header=TRUE)
d<-anes
d$vote16new<-rep(NA,nrow(d))
d$vote16new[d$vote16==1]<-"Trump"
d$vote16new[d$vote16==2]<-"Clinton"
d$vote16new[d$vote16>2]<-"Others"
summary(d$vote16new)
table(d$outraged[is.na(d$outraged)])
FemAnswered<-d[d$ftfeminists<999,]
set.seed(123)
indicesTrainingSet<-sample(1:nrow(FemAnswered), 2000, replace=FALSE)
train<-FemAnswered[indicesTrainingSet,]
test<-FemAnswered[-indicesTrainingSet,]
boxplot(train$ftfeminists~train$vote16new+train$outraged,las=1,col=c("blue","green","red"),main="Atitudes towards Feminists by Voting Candidates and Outrage Level",ylim=c(1,100))