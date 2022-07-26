% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Imputate_REE.R
\name{impute_REE}
\alias{impute_REE}
\title{Impute Rare earth elements}
\usage{
impute_REE(data, prefix = NULL, suffix = NULL, rsquared = 0.9)
}
\arguments{
\item{data}{A dataframe resulting from 'model_ree()'}

\item{prefix}{A prefix in your columns e.g. ICP_La}

\item{suffix}{A suffix in your columns e.g. La_ppm}

\item{rsquared}{A numerical value between 0 and 1. Tolerance to mis-fitting models. set as 0.9 by default.}
}
\value{
A dataframe
}
\description{
Imputes missing REE after modelling. Expect the output of 'model_REE()'
function. Only missing values are replaced.
}
\details{
By default, exclude models with R-squared lower than 0.9.
}
\examples{

testing_data \%>\%
dplyr::slice(1:100) \%>\%
model_REE(prefix = 'Zr', suffix = 'ppm') \%>\%
impute_REE(prefix = 'Zr', suffix = 'ppm')



}
