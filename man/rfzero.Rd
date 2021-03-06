\name{rfzero}
\alias{rfzero}
\title{Finding the solution for f=0 on the right side.}
\usage{
  rfzero(f, ..., lower = 0, tol = 1e-06, maxiter = 100)
}
\arguments{
  \item{f}{function to solve for 0}

  \item{...}{other parameters passed into f}

  \item{lower}{lower bound of the optimization}

  \item{tol}{tolerance level}

  \item{maxiter}{maximum number of iterations}
}
\value{
  a list \itemize{ \item{b}{solution} \item{c}{?}
  \item{itfun}{function evalution iterations} }
}
\description{
  Finding the solution for f=0 on the right side.
}
\details{
  Not working and not used.
}
\author{
  Zhenglei Gao
}

