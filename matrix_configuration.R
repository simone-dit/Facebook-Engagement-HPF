setwd("/Users/apple/Desktop/Facebook-Engagement-with-Hierarchical-Poisson-Factorization/Engagement Matrix")
list.files()

adis = read.csv(list.files()[1],header=T)
nike = read.csv(list.files()[2],header=T)
puma = read.csv(list.files()[3],header=T)
ua = read.csv(list.files()[4],header=T)

engage = rbind(adis,nike,puma,ua)
dim(engage)
engage$post = c(1:dim(engage)[1])
head(engage)
names(engage)
engage = cbind(engage$post, engage[,1:6])
names(engage) = c("post","date"   , "share"  , "like"   , "emo"     ,"comment", "brand")

write.table(engage,file="fb_engagement.csv",sep=",", qmethod = "double",row.names=F)

### Split "engage" --> Training & Test
set.seed(20)
test.idx = sample(1:dim(engage)[1],319,replace=F)
test.set = engage[test.idx,]
## > table(test.set$brand)
#  A  N  P  U 
# 80 81 73 85 

### Split Training --> Training & Validation
train.idx = c(1:dim(engage)[1])[-test.idx]

valid.idx = sample(train.idx,256,replace=F)
valid.set = engage[valid.idx,]
## > table(valid.set$brand)
#  A  N  P  U 
# 68 53 63 72

train.idx = c(1:dim(engage)[1])[-c(test.idx,valid.idx)]
train.set = engage[train.idx,]
## > table(train.set$brand)
#   A   N   P   U 
# 251 266 264 243 

### EXPORT AS .CSV
write.table(test.set,file="test.csv",sep=",", qmethod = "double",row.names=F)
write.table(train.set,file="train.csv",sep=",", qmethod = "double",row.names=F)
write.table(valid.set,file="validation.csv",sep=",", qmethod = "double",row.names=F)