# Kernel Density Estimation

normPDF <- function(x, mu, var){
  term <- 1/(sqrt(var)*sqrt(2*3.14))
  power <- (-1/2)*((x-mu)/sqrt(var))^2
  return(term*exp(power))
}
normPDF(5, 5, 1)
normPDF(10, 5, 1)

set.seed(1693)
sample <- rnorm(10000, 5, 1)

kde <- density(sample)
plot(kde$x, kde$y, type = 'l')
kde$y[which(kde$x >= 5)[1]]
