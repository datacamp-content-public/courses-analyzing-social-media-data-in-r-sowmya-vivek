library(remotes)

##### Install specific package versions from CRAN #####

install_version("rtweet", "0.6.9")
install_version("httpuv", "1.5.1")
install_version("quanteda", "1.5.0")
install_version("plyr", "1.8.4")
install_version("wordcloud", "2.6")
install_version("ggplot2", "3.2.0")
install_version("ggthemes", "4.2.0")
install_version("topicmodels", "0.2-8")
install_version("syuzhet", "1.0.4")
install_version("maps", "3.3.0")
install_version("igraph", "1.2.4.1")



##### Install packages in development from GitHub #####

# install_github("nicholasehamilton/ggtern")

##### Install packages from Bioconductor

# source("https://bioconductor.org/biocLite.R")
# biocLite("GenomicRanges")

##### Include datasets in the image

data_dir <- Sys.getenv("DATADIR")
dir.create(data_dir)

#' @param x Amazon S3 URL of the dataset, as a string. 
download_data <- function(x) {
  download.file(
    x,
    file.path(data_dir, basename(x))
  )
}

# Usage is, e.g.,
# download_data(
#   "https://assets.datacamp.com/production/repositories/19/datasets/27a2a8587eff17add54f4ba288e770e235ea3325/coffee.csv"
# )
