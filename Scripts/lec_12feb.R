plot(1:10)
x <- rnorm(200)
y <- 2*x + rnorm(200)
plot(x,y,
     main = "Correlated Random Numbers",
     xlab = "x", ylab = "2x + noise",
     xlim = c(-3,3),ylim = c(-6,6))

x <- rnorm(200)
y <- rnorm(200)
plot(x,y,
     pch = ifelse(x*y>1, 17, 1),
     main = "Scatter point with conditnal PCH")

x <-rnorm(75)
y <- 1.5*x + rnorm(75)
z <- sqrt(1+x^2)+ rnorm(75)
plot(x,y, pch = 1,
     xlim = range(x),ylim = range(y,z),
     xlab = "x", ylab = "value")
points(x,z,pch=17)
title("Scatter Plot with two datasets")

x <- rnorm(75)
y<- 1.5*x + rnorm(75)
plot(x,y,pch = 15,col = "blue", main ="Blue")

plot(x,y,pch=16,
     col = ifelse(y>= mean(y),"red","green"),
     main = "Scatter plot")

plot(x,y,col = "blue",pch = 0,
     xlim = range(x),ylim = range(y,z),
     xlab = "x", ylab = "value")
points(x,z,col="red",pch=1)
title("Scatter plot with two dataset in diff color")

t <- 1:50
y <- 2.5*sin(t*pi/60)+rnorm(t)
plot(t,y,type = "l",main = "Line Plot")

lty_val<-1:6
plot(lty_val, axes = FALSE, ann= FALSE, type = "n")
abline(h =lty_val, lwd= 2, lty= lty_val)
mtext(lty_val, at = lty_val, side = 2)
title("Line types (lty)")

plot(t, y, lwd= 2, type = "l")
abline(h = mean(y), col = "red", lty= 2)
abline(h = range(y), col = "blue", lty= 3)
abline(v = t[c(which.min(y), which.max(y))], col = "brown", lty= 3)
title("Line plot with auxiliary lines")

p <-40
plot(t[t <= p], y[t <= p], type = "l",
     xlim= range(t), xlab= "t", ylab= "y")
lines(t[t >= p], y[t >= p], lty= 2)
title("Two period Line Plot")

plot(y, type = "l")
points(y, pch= 16)
title("Line plot with points")

plot(y, pch= 16)
lines(y)
title("Line plot with points")

t <-1:30
y1 <-1.5 * t + 6 * rnorm(30)
y2 <-2.5 * sqrt(t) + 8 * rnorm(30)
plot(t, y1, type = "l", col = "black",
     ylim= range(y1, y2), ylab="y1, y2")
points(y1, pch= 15)
lines(y2, col = "blue", lty= 2)
points(y2, col = "blue", pch= 16)
title ("Plot of two series")
legend("topleft",
       legend = c("y1", "y1"),
       col = c("black", "blue"),
       lty= c(1, 2), pch= c(15, 16),
       cex= 0.8, x.intersp= 0.5, y.intersp= 0.8)

ints<-1:10
names(ints) <-LETTERS[1:10]
barplot(ints)

data("flights", package = "nycflights13")
carriers <-table(flights$carrier)
carriers

carriers_sort<-sort(carriers, decreasing = TRUE)
carriers_sort

barplot(head(carriers_sort, 8),
        ylim= c(0, max(carriers_sort) * 1.1),
        xlab= "Carrier", ylab= "Flights",
        main ="Top 8 carriers ordered by number of flights")

grades <-c(A = 2, B = 10, C = 12, D = 8)
pie(grades, main = "Grades", radius = 1)

random_norm<-rnorm(10000)
hist(random_norm)

hist(random_norm, probability = TRUE, col = "lightgray", main="Histogram -Normally Distributed Data")
curve(dnorm, add = TRUE, lwd= 2, col ="blue")

ft_speed<-flights$distance/ flights$air_time
hist(ft_speed, xlab="Flight Speed", main = "Flight speed -Histogram")

plot(density(ft_speed, from = 2, to = 10, na.rm= TRUE),
     main ="Empirical distribution of flight speed", xlab="Flight Speed")
abline(v = mean(ft_speed, na.rm= TRUE),
       col = "blue", lty= 2)

hist(ft_speed,
     probability = TRUE, ylim= c(0, 0.5),
     main ="Histogram & distribution of flight speed",
     xlab= "Flight Speed",
     border ="gray", col = "lightgray")
lines(density(ft_speed, from = 2, na.rm= TRUE),
      col ="darkgray", lwd= 2)
abline(v = mean(ft_speed, na.rm= TRUE),
       col ="blue", lty=2)

x <-rnorm(1000)
boxplot(x)

boxplot(distance / air_time~ carrier, data =flights,
        main = "Box plot -flight speed by carrier")
