A = matrix(c(1,3,2,4,6,7), nrow = 2, ncol = 3, byrow = TRUE, 
 dimnames = list(c('r1','r2'),c('c1','c2','c3')))
A

diag(1,nrow = 5)

B = matrix(c(1:6), nrow = 3, ncol = 2)
x = (c(1,2))
B+x

y = (c(7,8,9))
B+y
B*x
B*y
B*B

t(B) #transpose



arr1 = array(c(1:24), dim = c(4,3,2))
arr1[3,2,2]

arr2 = array(c(1:120), dim = c(6,4,5))
arr2

x <- list(n = c(2,3,5), p = c(TRUE,FALSE), q = c('a','b','c'),3)
x$n
x$p
x$q
x[1]
x[1][1]

names(x) <- c('Num','Pum','Dum')
x$Num
y <- list(
  booleans = c(TRUE, FALSE, TRUE),
  characters = c("a", "b", "c", "d", "e"),
  floats = c(1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8)
)

z <- unlist(y)

b <- z[seq(2, length(z), by=2)]

print(b)
