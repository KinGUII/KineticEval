\name{myformat}
\alias{myformat}
\title{Formating a data frame}
\usage{
  myformat(x, digits = 4, ...)
}
\arguments{
  \item{x}{A data frame}

  \item{digits}{How many digits should be printed after the
  decimal point.}

  \item{...}{Other parameters to be passed into
  \code{\link{format}}}
}
\value{
  A formatted data frame
}
\description{
  Formatting a data frame by controlling the number of
  digits after the decimal point
}
\details{
  If the data frame contains numeric columns, formmating
  those columns.
}
\author{
  Zhenglei Gao
}
\keyword{format}

