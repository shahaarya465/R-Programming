x <- function(main_string, substring) {
  if (grepl(substring, main_string)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

main <- "23AIML064"
sub <- "AIML"
if (x(main, sub)) {
  print("String contains AIML.\n")
} else {
  print("String does not contain AIML.\n")
}
