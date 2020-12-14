air <- read.csv('airlines.csv', stringsAsFactors = FALSE)
delay <- air$DEPARTURE_DELAY
delay[1:10]
crazymakers <- delay[delay>300]
crazymakers[1:10]
crazymakers <- crazymakers[!is.na(crazymakers)]
crazymakers[1:10]

vec1 <- sample(1:5, 10, replace = TRUE)
vec2 <- sample(1:5, 10, replace = TRUE)
vec1
vec2
vec1 + vec2
vec1^vec2
vec1 >= vec2
vec1 <= 5
vec1 <= 0 | vec1 >= 3
vec1 <= 0 & vec1 >= vec2
vec1 == vec2
vec1 != vec2

median(crazymakers)
median(delay, na.rm = TRUE)

hist(rnorm(1000))

help(lm)
?lm

dim(air)
nrow(air)
names(air)
class(air)
is.matrix(air)

myList <- list(stuff = 3, mat = matrix(1:4, nrow = 2), moreStuff = c("turkey","us"), list(5, "bear"))
myList
myList[[1]]
myList$moreStuff[2]

is.list(myList)
class(myList)

hist(air$DEPARTURE_DELAY)
set.seed(0, sample.kind = "Rounding")
subset_air <- air[sample(1:nrow(air), 10000, replace=FALSE),]
subset_air$DEPARTURE_DELAY[subset_air$DEPARTURE_DELAY > 60*3] <- 60*3
plot(subset_air$DEPARTURE_DELAY ~ subset_air$DISTANCE)
boxplot(subset_air$DEPARTURE_DELAY ~ subset_air$DAY_OF_WEEK)
boxplot(subset_air$DEPARTURE_DELAY ~ subset_air$AIRLINE)
par(pch = 2)
plot(subset_air$DEPARTURE_DELAY ~ subset_air$DISTANCE,
     xlab = 'distance(miles)',
     ylab = 'delay (minutes)',
     log = 'x')

x <- mean(air$DEPARTURE_DELAY, na.rm = TRUE)
round(x, digits = 2)
round(x, digits = 0)

summary(air$ARRIVAL_DELAY - air$DEPARTURE_DELAY)

delay <- air$DEPARTURE_DELAY
delay[delay < 0] <- 0
delay[delay > 0] <- 60
hist(delay)
hist(delay, nclass = 100)
hist(delay, nclass = 5)
hist(delay, breaks = 10)
hist(delay, breaks = 100)

sub <- air[air$DESTINATION_AIRPORT == "ORD" | air$DESTINATION_AIRPORT == "IAH",]
plot(sub$DEPARTURE_TIME, sub$DEPARTURE_DELAY, main = 'Departure delay by time of the day')
sub$color <- "blue"
sub$color[sub$DESTINATION_AIRPORT == "IAH"] <- "red"
plot(sub$DEPARTURE_TIME, sub$DEPARTURE_DELAY, col = sub$color, main = 'Departure delay by time of the day')
