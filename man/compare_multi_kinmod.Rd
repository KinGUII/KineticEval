\name{compare_multi_kinmod}
\alias{compare_multi_kinmod}
\title{Function to update kinetic model and do a comparison of two parameter estimations.}
\usage{
  compare_multi_kinmod(mkinmodini, newparms, eigen = FALSE,
    odesolver = "lsoda", atol = 1e-09, rtol = 1e-10)
}
\arguments{
  \item{mkinmodini}{a list of class mkinmod}

  \item{newparms}{a vector or a matrix of new parameters}

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
  Inspired by Andrew's data example where he gets different
  results from KinGUI and KinGUII. Not a good sign! Only
  compare two models! not more than two!! so either
  newparms is null or Fit is null.
}
\examples{
\dontrun{
data(andrew)
mkinmodini <- mkinmod.full(Parent=list(type="SFO",to="Metab"),
                           Metab=list(type="SFO",M0=list(ini=0,fixed=0,lower=0,upper=Inf)),data=andrew)
Fit <- mkinfit.full(mkinmodini,ctr= kingui.control(method = 'L-BFGS-B',submethod = 'Port'))
compare_multi_kinmod(mkinmodini)
compare_multi_kinmod(mkinmodini,rbind(Fit$par,c(2.0633,0.2105,0.3033,0.8945,1)))
}
}
\author{
  Zhenglei Gao
}

