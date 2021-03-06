\name{plot.mcmckingui}
\alias{plot.mcmckingui}
\title{S3 plot method to plot for calss 'mcmckingui'}
\usage{
  \method{plot}{mcmckingui} (x, y = NULL,
    fname1 = "density", fname2 = "correlation",
    fname3 = "trace", pch = 1, device = "wmf", ...)
}
\arguments{
  \item{x}{An object of class 'mcmckingui'}

  \item{y}{NULL}

  \item{fname1}{The file name of the density plot.}

  \item{fname2}{The file name of the correlation plot.}

  \item{fname3}{The file name of the trace plot}

  \item{pch}{What kind of points to use in the plots.}

  \item{device}{The plot device to be used.}

  \item{\dots}{Other arguments to be passed to 'plot'.}
}
\value{
  Density and Correlation plots of the sampled parameters
  in 'wmf' or other format.
}
\description{
  Make the density correlation and trace plots of the
  generated Markov Chains.
}
\note{
  \code{plot.mcmckingui0} is a deprecated version to be
  used with the object returned by \code{mcmckinfit.gui}
}
\author{
  Zhenglei Gao
}

