a = 5
typeof(a)
b = 6L
typeof(b)
c = as.integer(a)
typeof(c)

if (FALSE) {
  "This is a multi-line comment using the if(FALSE) method.
  It can span multiple lines of text.
  Just remember that it is enclosed within quotes."
}


vec1 <- c(0,2)
vec2 <- c(2,3)

cat ("Addition of vectors: ",vec1 + vec2,"\n")
cat ("Subtraction of vectors: ",vec1 - vec2,"\n")
cat ("Multiplication of vectors: ",vec1 * vec2,"\n")
cat ("Division of vectors: ",vec1 / vec2,"\n")
cat ("Modulo of vectors: ",vec1 %% vec2,"\n")
cat ("Power operator: ",vec1 ^ vec2,"\n")

#Any non zero integer value is considered as a TRUE value, be it a complex or real

vec1 <- c(0,2)
vec2 <- c(TRUE , FALSE)

cat ("Element wise AND:", vec1 & vec2,"\n")
cat ("Element wise OR:", vec1 | vec2,"\n")
cat ("Logical AND:", vec1[1] && vec2[1],"\n")
cat ("Logical OR:", vec1[1] || vec2[1],"\n")
cat ("Negation:", !vec1)

#Relational Operators

vec1 <- c(0,2)
vec2 <- c(2,3)

cat ("Vector1 less than Vector2: ",vec1 < vec2)
cat ("Vector1 greater than Vector2: ",vec1 > vec2)
