% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.R
\name{feed.extract}
\alias{feed.extract}
\title{Extract data from feeds}
\usage{
feed.extract(url, encoding = integer())
}
\arguments{
\item{url}{URL for the feed.}

\item{encoding}{Explicitly identify the encoding of the content.}
}
\value{
A list containing the following elements:

- title: Title of the original site.

- link: A link to the original site.

- updated: When the feed was last updated.

- items: A data frame with records for each entry in the feed.

- hash: A hash key constructed from the post link. This is intended for easy indexing.
}
\description{
Read feed metadata and entries.
}
\examples{
feed.extract("https://feeds.feedburner.com/RBloggers")
feed.extract("http://journal.r-project.org/rss.atom")
feed.extract("http://www.valor.com.br/financas/mercados/rss", "ISO-8859-2")
}

