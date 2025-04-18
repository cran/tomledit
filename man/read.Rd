% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse.R
\name{parse_toml}
\alias{parse_toml}
\alias{read_toml}
\title{Read and parse TOML}
\usage{
parse_toml(x)

read_toml(file)
}
\arguments{
\item{x}{a character scalar containing valid TOML}

\item{file}{path to the file to  write.}
}
\value{
an object of class \code{Toml}
}
\description{
Use \code{parse_toml()} to parse a string into a \code{Toml} document.
Use \code{read_toml()} to read a \code{.toml} file from disk.
}
\examples{
# TOML string
raw_toml <- '# Top-level table begins.
name = "Fido"
breed = "pug"

# Top-level table ends.
[owner]
name = "Regina Dogman"
member_since = 1999-08-04'

# write the TOML string to a temp file
tmp <- tempfile()
writeLines(raw_toml, tmp)

# parse the TOML string
parse_toml(raw_toml)

# read the TOML file
read_toml(tmp)
}
