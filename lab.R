data1 <- read.csv(file.choose(), header = T)
data1
# install.packages("xlsx")
# library(xlsx)
EPI_1 <- read.csv(file.choose(), header = T, skip = 1)
EPI_1$EPI
# code <- c(EPI$code)
# iso <-c(EPI$ISO3V10)
# EPI.fram <- data.frame(code, iso)
# EPI.fram
EPI_1
attach(EPI_1)
fix(EPI_1)
tf <- is.na(EPI_1$EPI)
E <- EPI_1$EPI[!tf]
E
summary(E)
fivenum(E, na.rm = T)
stem(E)
hist(E, seq(30., 95., 1.0), prob = T)
lines(density(E, na.rm = T, bw = 1.)) 
rug(E) 
plot(ecdf(E), do.points = F, verticals = T)
par(pty = "s")
qqnorm(E); qqline(E)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab= "Q-Q plot for t dsn")
qqline(x)