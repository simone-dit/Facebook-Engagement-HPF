test.set
post.str = rep(test.idx,4)
react.str = rep(1:4, each = dim(test.set)[1])
count.str = c(test.set[,3],test.set[,4],test.set[,5],test.set[,6])
test = data.frame(post.str,react.str,count.str)
head(test)

write.table(test, file="test.tsv",col.names=F,row.names=F)

valid.set
dim(valid)
post.str = rep(valid.idx,4)
react.str = rep(1:4, each = dim(valid.set)[1])
count.str = c(valid.set[,3],valid.set[,4],valid.set[,5],valid.set[,6])
valid = data.frame(post.str,react.str,count.str)

write.table(valid, file="validation.tsv",col.names=F,row.names=F)

dim(train.set) # 1024
dim(train) # 4096 3
post.str = rep(train.idx,4)
react.str = rep(1:4, each = dim(train.set)[1])
count.str = c(train.set[,3],train.set[,4],train.set[,5],train.set[,6])
train = data.frame(post.str,react.str,count.str)

write.table(train, file="train.tsv",col.names=F,row.names=F)