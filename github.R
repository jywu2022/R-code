anes<-read.csv(file="/Users/jiayiwu/Downloads/anes.csv",header=TRUE)
d<-anes
d$vote16new<-rep(NA,nrow(d))
d$vote16new[d$vote16==1]<-"Trump"
d$vote16new[d$vote16==2]<-"Clinton"
d$vote16new[d$vote16>2]<-"Others"
summary(d$vote16new)
