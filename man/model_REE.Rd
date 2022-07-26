% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Model_REE.R
\name{model_REE}
\alias{model_REE}
\title{Model REE + Y contents using an empirical method based on the lattice strain theory}
\usage{
model_REE(
  dat,
  r0 = 0.84,
  exclude = c("La", "Ce", "Eu", "Y"),
  prefix = NULL,
  suffix = NULL,
  method = PalmeOneill2014CI,
  Y_correction_fact = 1.29,
  Yb_correction_fact = 1/0.8785,
  Lu_correction_fact = 1/0.8943,
  correct_heavy = TRUE
)
}
\arguments{
\item{dat}{A data frame}

\item{r0}{A number: ionic radii of the lattice site r0}

\item{exclude}{a string: vector including elements that should be omitted from modelling. La, Ce and Eu are the default. Ce and Eu should be always included}

\item{prefix}{A prefix in your columns e.g. ICP_La}

\item{suffix}{A suffix in your columns e.g. La_ppm}

\item{method}{an option from: PalmeOneill2014CI, Oneill2014Mantle, McDonough1995CI}

\item{Y_correction_fact}{a number: correction factor for underestimated Y. 1.29 by default.}

\item{Yb_correction_fact}{a number: correction factor for underestimated Yb 1/0.8785}

\item{Lu_correction_fact}{a number: correction factor for underestimated Lu 1/0.8943}

\item{correct_heavy}{a logical. If \code{TRUE} will apply a correction factor for Yb, Lu and Y.}
}
\value{
a dataframe
}
\description{
Model REE will make a linear regression between the REE (+Y) and the relationship of the ideal Ionic Radii in the lattice site (r0) and the ionic radii of the element that use that space (ri) according to the relationship : (ri/3 + r0/6)(ri-r0)^2`
For details in the lattice strain theory, see Blundy and Wood 1994.
}
\examples{

testing_data \%>\%  model_REE(prefix = 'Zr', suffix = 'ppm')


}
