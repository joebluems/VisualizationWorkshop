#### note: these are all trades for "ABC Investments"
### code is meant to be pasted at R command line ###

### generate the details of each trade ###
set.seed(892)
index <- seq(1,500)
volume <- as.integer(rnorm(500,100000,30000))
trader <- sample(LETTERS[1:5],500,replace=TRUE)
industry <- sample(c("auto","telco","health","software","manufact"),500,replace=TRUE)
months <- sample(1:6,500,replace=TRUE)

### estimte the performance at time intervals - i.e. one minute, one day, etc.)
perf1m <- rnorm(500,0.01,0.01)
perf1d <- rnorm(500,0.025,0.035)
perf1w <- rnorm(500,0.005,0.04)
perf1mo <- rnorm(500,-0.01,0.05)

### concatenate the information and write to csv ####
x1 <- cbind(index,volume,perf1m,"minute",trader,industry,months)
x2 <- cbind(index,volume,perf1d,"day",trader,industry,months)
x3 <- cbind(index,volume,perf1w,"week",trader,industry,months)
x4 <- cbind(index,volume,perf1mo,"month",trader,industry,months)
data <- rbind(x1,x2,x3,x4)
colnames(data) <- c("index","volume","change","time","trader","industry","months")
write.csv(data,file="./abc.csv")

