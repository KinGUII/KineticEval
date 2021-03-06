\name{kin_mod_nls}
\alias{kin_mod_nls}
\title{predicted residue values using defined kinetic model}
\usage{
  kin_mod_nls(P, pnames = NULL, inside = FALSE,
    plot = TRUE, plottitle, ...)
}
\arguments{
  \item{P}{a vector of parameters}

  \item{pnames}{names of the parameters, nls function will
  forget them!}

  \item{inside}{logical, whether the function is evaluated
  inside a fit function.}

  \item{plot}{logical, whether to make a plot}

  \item{plottitle}{the title of the plot}

  \item{...}{other parameters to be passed into plot}
}
\value{
  the calculated model values
}
\description{
  Define the model cost function for kinetic models
}
\author{
  Zhenglei Gao
}

