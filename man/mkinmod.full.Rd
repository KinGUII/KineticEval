\name{mkinmod.full}
\alias{mkinmod.full}
\title{Full function to set up a kinetic model with one or more compartments and the data.}
\usage{
  mkinmod.full(...,
    inpartri = c("default", "water-sediment", "advanced"),
    outpartri = c("default", "water-sediment", "advanced"),
    data = NULL, weight = NULL, autoInit = TRUE)
}
\arguments{
  \item{...}{Each list cell represents a comparment which
  contains a list of comonents including 'type'(kinetic
  reaction type, single first order kinetics "SFO" are
  implemented for all compartments, while "FOMC", "DFOP"
  and "HS" can additionally be chosen for the first
  variable which is assumed to be the source compartment),
  each parameter name(a list of
  'ini','fixed','lower','upper'),'residue'(measured
  concentrations),'time'(sampling time),'weight'(weights to
  be used, defaul 1),'sink'( Default TRUE, tranformation to
  unspecified compartments.),'to'(a vector of compartment
  names that the source compartment will be transferred
  to).}

  \item{inpartri}{Input parameterization.}

  \item{outpartri}{Output parameterization.}

  \item{data}{Optional. Data can be read from a data file.}

  \item{weight}{Optional. General weighting schemes using a
  weight matrix.}
}
\value{
  A list of class 'mkinmod.full' for use with
  \code{mkinfit.full},\code{\link{IRLSkinfit.full}} and
  \code{\link{mcmckinfit.full}} containing:

  \item{diffs}{ A vector of string representations of
  differential equations, one for each modelling
  compartment.} \item{parms}{ A vector of parameter names
  occurring in the differential equations.} \item{map}{A
  list containing named character vectors for each
  compartments in the model.} \item{parms.ini}{Initial
  values for all kinetic parameters in the model.}
  \item{state.ini}{Initial state values for all
  compartments in the model.} \item{lower}{Lower bounds for
  the parameters(including state variables) to be
  optimized.} \item{upper}{upper bounds for the
  parameters(including state variables) to be optimized.}
  \item{fixed_parms}{The names of the kinetic parameters
  that are fixed during optimization.}
  \item{fixed_initials}{ The names of the initial states
  that are fixed during optimization.} \item{residue}{The
  observed data matrix with a time column.}
  \item{weightmat}{The weights matrix.} \item{ff}{A vector
  of string representations of the transformation between
  the formation fractions in the model and the transfomed
  formation fractions in the optimization process.}

  A list with "mkinmod.full" in the class attribute.
}
\description{
  GUI version of \code{\link{mkinmod}}. The function takes
  a specification, consisting of a list of the compartments
  in the data. Each compartment is again represented by a
  list, specifying the kinetic model type, reaction or
  transfer to other observed compartments, the initial
  parameter values, lower and upper bounds, fixed or not,
  and observed data.
}
\note{
  \code{mkinmod} is a deprecated version doing the same for
  the use with \code{mkinfit.gui},\code{IRLSkinfit.gui} and
  \code{mcmckinfit.gui}.
}
\examples{
SFO_SFO_full <- mkinmod.full(Parent = list(type = "SFO", to = "Metab", sink = TRUE,
                           k = list(ini = 0.1,
                      fixed = 0,
                      lower = 0,
                      upper = Inf),
              M0 = list(ini = 195,
                      fixed = 0,
                      lower = 0,
                      upper = Inf),
                           FF = list(ini = c(.1),
                      fixed = c(0),
                      lower = c(0),
                      upper = c(1)),
                      time=c(0.0,2.8,   6.2,  12.0,  29.2,  66.8,  99.8,
127.5, 154.4, 229.9, 272.3, 288.1, 322.9),
                    residue = c( 157.3, 206.3, 181.4, 223.0, 163.2,
144.7,  85.0,  76.5,  76.4,  51.5,  45.5,  47.3, 42.7)),
                           Metab = list(type = "SFO",
                           k = list(ini = 0.1   ,
                      fixed = 0,
                      lower = 0,
                      upper = Inf),
              M0 = list(ini = 0,
                      fixed = 1,
                      lower = 0,
                      upper = Inf),
                    residue =c( 0.0,  0.0,  0.0,  1.6,  4.0, 12.3, 13.5,
12.7, 11.4, 11.6, 10.9,  9.5,  7.6))
)
}
\author{
  Zhenglei Gao
}
\seealso{
  \code{\link{mkinmod}}, \code{\link{completeCompound}}
}
\keyword{Kinetic-Model}
\keyword{Kinetic-Models}

