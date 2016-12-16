setwd("/Users/apple/Box Sync/Sports Marketing/FACEBOOK")
list.files()

### Read in all raw data
puma1 = read.csv(list.files()[1],header=T)
puma2 = read.csv(list.files()[2],header=T)
puma3 = read.csv(list.files()[3],header=T)
puma4 = read.csv(list.files()[4],header=T)

ua1 = read.csv(list.files()[5],header=T)
ua2 = read.csv(list.files()[6],header=T)
ua3 = read.csv(list.files()[7],header=T)
ua4 = read.csv(list.files()[8],header=T)

adidas1 = read.csv(list.files()[13],header=T)
adidas2 = read.csv(list.files()[14],header=T)
adidas3 = read.csv(list.files()[15],header=T)
adidas4 = read.csv(list.files()[16],header=T)

nike1 = read.csv(list.files()[11],header=T)
nike2 = read.csv(list.files()[12],header=T)
nike3 = read.csv(list.files()[13],header=T)
nike4 = read.csv(list.files()[14],header=T)

names(adidas4) = c("message", "link","permalink_url","created_time","type","name" ,"id"                                ,"shared","reactions"  ,   "viewer_reaction","likes","can_like"            ,"has_liked"     ,      "comments_order" , "comments", "can_comment" ,     "X")
## USE:"created_time", "shared", "likes","reactions","comments"
library(stringr)

#### PUMA matrix
puma1$create  = str_sub(as.character(puma1$created_time),1,10)
mpuma1 =  data.frame(puma1$create,puma1$shared, puma1$likes, puma1$reactions-puma1$likes, puma1$comments)
names(mpuma1) = c("date","share","like","emo","comment")

puma2$create  = str_sub(as.character(puma2$created_time),1,10)
mpuma2 =  data.frame(puma2$create,puma2$shared, puma2$likes, puma2$reactions-puma2$likes, puma2$comments)
names(mpuma2) = c("date","share","like","emo","comment")

puma3$create  = str_sub(as.character(puma3$created_time),1,10)
mpuma3 =  data.frame(puma3$create,puma3$shared, puma3$likes, puma3$reactions-puma3$likes, puma3$comments)
names(mpuma3) = c("date","share","like","emo","comment")

puma4$create  = str_sub(as.character(puma4$created_time),1,10)
mpuma4 =  data.frame(puma4$create,puma4$shared, puma4$likes, puma4$reactions-puma4$likes, puma4$comments)
names(mpuma4) = c("date","share","like","emo","comment")

puma.mat = rbind(mpuma1,mpuma2,mpuma3,mpuma4)
puma.mat$brand = rep("P",dim(puma.mat)[1])
puma.mat[is.na(puma.mat)]=0
### PUMA matrix
## dim(puma.mat) 400 6
## puma.mat[c(1,400),1]
[1] 2016-12-15 2015-06-03

#### NIKE matrix
nike1$create  = str_sub(as.character(nike1$created_time),1,10)
mnike1 =  data.frame(nike1$create,nike1$shared, nike1$likes, nike1$reactions-nike1$likes, nike1$comments)
names(mnike1) = c("date","share","like","emo","comment")

nike2$create  = str_sub(as.character(nike2$created_time),1,10)
mnike2 =  data.frame(nike2$create,nike2$shared, nike2$likes, nike2$reactions-nike2$likes, nike2$comments)
names(mnike2) = c("date","share","like","emo","comment")

nike3$create  = str_sub(as.character(nike3$created_time),1,10)
mnike3 =  data.frame(nike3$create,nike3$shared, nike3$likes, nike3$reactions-nike3$likes, nike3$comments)
names(mnike3) = c("date","share","like","emo","comment")

nike4$create  = str_sub(as.character(nike4$created_time),1,10)
mnike4 =  data.frame(nike4$create,nike4$shared, nike4$likes, nike4$reactions-nike4$likes, nike4$comments)
names(mnike4) = c("date","share","like","emo","comment")

nike.mat = rbind(mnike1,mnike2,mnike3,mnike4)
nike.mat$brand = rep("N",dim(nike.mat)[1])
nike.mat[is.na(nike.mat)]=0
### NIKE matrix
## dim(nike.mat) 400 6
#  2016-12-13 2013-06-13


#### UA matrix
ua1$create  = str_sub(as.character(ua1$created_time),1,10)
mua1 =  data.frame(ua1$create,ua1$shared, ua1$likes, ua1$reactions-ua1$likes, ua1$comments)
names(mua1) = c("date","share","like","emo","comment")

ua2$create  = str_sub(as.character(ua2$created_time),1,10)
mua2 =  data.frame(ua2$create,ua2$shared, ua2$likes, ua2$reactions-ua2$likes, ua2$comments)
names(mua2) = c("date","share","like","emo","comment")

ua3$create  = str_sub(as.character(ua3$created_time),1,10)
mua3 =  data.frame(ua3$create,ua3$shared, ua3$likes, ua3$reactions-ua3$likes, ua3$comments)
names(mua3) = c("date","share","like","emo","comment")

ua4$create  = str_sub(as.character(ua4$created_time),1,10)
mua4 =  data.frame(ua4$create,ua4$shared, ua4$likes, ua4$reactions-ua4$likes, ua4$comments)
names(mua4) = c("date","share","like","emo","comment")

ua.mat = rbind(mua1,mua2,mua3,mua4)
ua.mat$brand = rep("U",dim(ua.mat)[1])

ua.mat[is.na(ua.mat)]=0
### UA matrix
## dim(ua.mat) 400 6
## ua.mat[c(1,400),1]
[1] 2016-12-15 2015-07-30

#### ADIDAS matrix
adidas1$create  = str_sub(as.character(adidas1$created_time),1,10)
madidas1 =  data.frame(adidas1$create,adidas1$shared, adidas1$likes, adidas1$reactions-adidas1$likes, adidas1$comments)
names(madidas1) = c("date","share","like","emo","comment")

adidas2$create  = str_sub(as.character(adidas2$created_time),1,10)
madidas2 =  data.frame(adidas2$create,adidas2$shared, adidas2$likes, adidas2$reactions-adidas2$likes, adidas2$comments)
names(madidas2) = c("date","share","like","emo","comment")

adidas3$create  = str_sub(as.character(adidas3$created_time),1,10)
madidas3 =  data.frame(adidas3$create,adidas3$shared, adidas3$likes, adidas3$reactions-adidas3$likes, adidas3$comments)
names(madidas3) = c("date","share","like","emo","comment")

adidas4$create  = str_sub(as.character(adidas4$created_time),1,10)
madidas4 =  data.frame(adidas4$create,adidas4$shared, adidas4$likes, adidas4$reactions-adidas4$likes, adidas4$comments)
names(madidas4) = c("date","share","like","emo","comment")

adidas.mat = rbind(madidas1,madidas2,madidas3,madidas4)
adidas.mat$brand = rep("A",dim(adidas.mat)[1])

adidas.mat[is.na(adidas.mat)] = 0
### ADIDAS matrix
## dim(adidas.mat) 199 6
## adidas.mat[c(1,199),1]
[1] 2016-12-14 2011-12-19

write.table(nike.mat,file="NIKE.csv",sep=",", qmethod = "double",row.names=F)
write.table(ua.mat,file="UA.csv",sep=",", qmethod = "double",row.names=F)
write.table(puma.mat,file="PUMA.csv",sep=",", qmethod = "double",row.names=F)
write.table(adidas.mat,file="ADIDAS.csv",sep=",", qmethod = "double",row.names=F)