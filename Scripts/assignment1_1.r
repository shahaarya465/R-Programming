validate_password <- function(password) {
  if (nchar(password) < 8) {
    return(FALSE)
  }
  if (!grepl("[/*@_]", password)) {
    return(FALSE)
  }
  if (!grepl("[a-zA-Z]", password)) {
    return(FALSE)
  }
  if (!grepl("[0-9]", password)) {
    return(FALSE)
  }
  return(TRUE)
}
input <- readline(prompt = "Enter a password: ")

if (validate_password(input)) {
  print("Password is valid.")
} else {
  print("Password is invalid.")
}
