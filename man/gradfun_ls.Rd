\name{gradfun_ls}
\alias{gradfun_ls}
\title{Derive the gradient}
\usage{
  gradfun_ls(modelfun, par, obs, ...)
}
\arguments{
  \item{modelfun}{model function}

  \item{par}{parameter vector}

  \item{obs}{observed values}

  \item{...}{other parameters to be passed into modelfun}
}
\value{
  the gradient at par
}
\description{
  calculate the gradient at the current parameter.
}
\details{
  using the chain rule of lease square problem.
}
\author{
  Zhenglei Gao
}

