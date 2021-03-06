########################
# Function to transformed parameters for optim

transParCCRW <- function(x){
  x[1:2] <- qlogis(x[1:2])
  x[3:5] <- log(x[3:5] - .Machine$double.xmin)
  return(x)
}

transParCCRWdn <- function(x){
  x[1:2] <- qlogis(x[1:2])
  x[3:4] <- log(x[3:4] - .Machine$double.xmin)
  x[5] <- log(x[5])
  return(x)
}

transParCCRWww <- function(x){
  x[c(1:2,7)] <- qlogis(x[c(1:2,7)])
  x[3:6] <- log(x[3:6] - .Machine$double.xmin)
  return(x)
}

transParHSMM <- function(x){
  # Prob parametrisation
  x[c(1:2,5:8)] <-  log(x[c(1:2,5:8)] - .Machine$double.xmin)
  x[c(3:4,9)] <- qlogis(x[c(3:4,9)])
#   # Mu parametrisation
#   x[1:8] <-  log(x[1:8] - .Machine$double.xmin)
#   x[9] <- qlogis(x[9])
  return(x)
}

transParHSMMl <- function(x){
  # Prob parametrisation
  x[c(1:2,4:7)] <-  log(x[c(1:2,4:7)] - .Machine$double.xmin)
  x[c(3,8)] <- qlogis(x[c(3,8)])
#   # Mu parametrisation
#   x[1:7] <-  log(x[1:7] - .Machine$double.xmin)
#   x[8] <- qlogis(x[8])
  return(x)
}

transParHSMMs <- function(x){
    # Prob parametrisation
    x[c(1,4:7)] <-  log(x[c(1,4:7)] - .Machine$double.xmin)
    x[c(2:3,8)] <- qlogis(x[c(2:3,8)])
#   # Mu parametrisation
#   x[1:7] <-  log(x[1:7] - .Machine$double.xmin)
#   x[8] <- qlogis(x[8])
  return(x)
}

transParHSMMp <- function(x){
  x[1:6] <-  log(x[1:6] - .Machine$double.xmin)
  x[7] <- qlogis(x[7])
  return(x)
}

transParHSMMpo <- function(x){
  x[1:5] <-  log(x[1:5] - .Machine$double.xmin)
  return(x)
}


transParTBW <- function(x){log(x)}

# For model that don't need transformation
transParx <- function(x){x}

itransParHSMM <- function(x){
  # Prob parametrisation
  x[c(1:2,5:8)] <-  .Machine$double.xmin + exp(x[c(1:2,5:8)])
  x[c(3:4,9)] <- plogis(x[c(3:4,9)])
#   # Mu parametrisation
#   x[1:8] <-  .Machine$double.xmin + exp(x[1:8])
#   x[9] <- plogis(x[9])
  return(x)
}

itransParHSMMl <- function(x){
  #Prob parametrisation
  x[c(1:2,4:7)] <-  .Machine$double.xmin + exp(x[c(1:2,4:7)])
  x[c(3,8)] <- plogis(x[c(3,8)])
#   # Mu parametrisation
#   x[1:7] <-  .Machine$double.xmin + exp(x[1:7])
#   x[8] <- plogis(x[8])
  return(x)
}

itransParHSMMs <- function(x){
    #Prob parametrisation
    x[c(1,4:7)] <-  .Machine$double.xmin + exp(x[c(1,4:7)])
    x[c(2:3,8)] <- plogis(x[c(2:3,8)])
#   # Mu parametrisation
#   x[1:7] <-  .Machine$double.xmin + exp(x[1:7])
#   x[8] <- plogis(x[8])
  return(x)
}

itransParHSMMp <- function(x){
  x[1:6] <-  .Machine$double.xmin + exp(x[1:6])
  x[7] <- plogis(x[7])
  return(x)
}

itransParHSMMpo <- function(x){
  x[1:5] <-  .Machine$double.xmin + exp(x[1:5])
  return(x)
}
