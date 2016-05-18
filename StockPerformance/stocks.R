#### note: these are all trades for "ABC Investments"
### code is meant to be pasted at R command line ###

### generate the details of each trade ###
set.seed(531)
index <- seq(1,200)
volume <- as.integer(rnorm(200,100000,30000))
trader <- sample(LETTERS[1:5],200,replace=TRUE)
industry <- sample(c("auto","telco","health","software","manufact"),200,replace=TRUE)

### estimte the performance at time intervals - i.e. one minute, one day, etc.)
perf1m <- rnorm(200,0.01,0.01)
perf1d <- rnorm(200,0.025,0.035)
perf1w <- rnorm(200,0.005,0.04)
perf1mo <- rnorm(200,-0.01,0.05)

### concatenate the information and write to csv ####
x1 <- cbind(index,volume,perf1m,"minute",trader,industry)
x2 <- cbind(index,volume,perf1d,"day",trader,industry)
x3 <- cbind(index,volume,perf1w,"week",trader,industry)
x4 <- cbind(index,volume,perf1mo,"month",trader,industry)
data <- rbind(x1,x2,x3,x4)
colnames(data) <- c("index","volume","change","time","trader","industry")
write.csv(data,file="./abc.csv")

