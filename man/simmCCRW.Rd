\name{simmCCRW}
\alias{simmCCRW}
\alias{sslta}
\title{Simulate a Combined Correlated Random Walk (CCRW)}
\description{Simulate a Combined Correlated Random Walk (CCRW). This model represents the movement of the area-restricted search strategy. The movement of the intensive search behavior is a Brownian walk while the movement of the the extensive search is a correlate random walk.}
\usage{
simmCCRW(n, gII, gEE, lI, lE, kE, a, dI=NULL)
}
\arguments{
  \item{n}{one integer value for the sample size. Note that this sample size represent the number of final step lengths and turning angles wanted (when TAc = 0). The ltraj object returned will be longer because a minimum of 3 locations are required to calculate a relative turning angle}
  \item{gII}{one numeric value (between 0 and 1) representing the probability of remaining in the intensive search behavior}
  \item{gEE}{one numeric value (between 0 and 1) representing the probability of remaining in the extensive search behavior}
  \item{lI}{one numeric and positive value representing the lambda value for the exponential distribution of the step lengths of the intensive search}
  \item{lE}{one numeric and positive value representing the lambda value for the exponential distribution of the step lengths of the extensive search}
  \item{kE}{one numeric and positive value representing the kappa value of von Mises distribution of the turning angles of the extensive search}
  \item{a}{one numeric and positive value representing the minimum step length value}
  \item{dI}{one numeric value (between 0 and 1) representing the probability of starting in the intensive search behavior, default value is NULL, in which case the stationary distribution of the Markov Chain is used to calculate the dI value}
}
\details{Simulates a CCRW and return a ltraj object}
\references{
Please refer to Auger-Methe, M., A.E. Derocher, M.J. Plank, E.A. Codling, M.A. Lewis (2015-In Press) Differentiating the Levy walk from a composite correlated random walk. Methods in Ecology and Evolution. Preprint available at \url{http://arxiv.org/abs/1406.4355}
}
