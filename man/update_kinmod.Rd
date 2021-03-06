\name{update_kinmod}
\alias{update_kinmod}
\title{update kinetic model with better parameter.}
\usage{
  update_kinmod(mkinmodini, newparms = NULL, Fit = NULL,
    compareChi2 = FALSE, eigen = FALSE,
    odesolver = "lsoda", atol = 1e-09, rtol = 1e-10)
}
\arguments{
  \item{mkinmodini}{a list of class mkinmod}

  \item{newparms}{a vector of parameter values}

  \item{Fit}{an object of class kingui}

  \item{compareChi2}{logical, whether to compare chi2.}

  \item{eigen}{logical,whether to use eigen method}

  \item{odesolver}{which odesolver to use}

  \item{atol}{the absolute tolerance level of the ode
  solver}

  \item{rtol}{the relative tolerance lever of the ode
  solver.}
}
\value{
  a matrix of comparisons.
}
\description{
  Function to update kinetic model and do a comparison of
  two parameter estimations.
}
\details{
  Inspired by Andrew's data example where he gets different
  results from KinGUI and KinGUII. Not a good sign! Only
  compare two models! not more than two!! so either
  newparms is null or Fit is null.
}
\author{
  Zhenglei Gao
}

