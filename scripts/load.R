
"This script downloads an online data file (via URL) and exports this data file into csv in the data folder.

Usage: scripts/load.R <url_to_read>" -> doc


suppressMessages(library(tidyverse))
suppressMessages(library(here))
suppressMessages(library(docopt))
suppressMessages(library(RCurl))
suppressMessages(library(readxl))

opt <- docopt(doc)

# Create data folder
dir.create("data")

main <- function(url_to_read = "https://ndownloader.figshare.com/files/18543320?private_link=74a5ea79d76ad66a8af8"){
  
# Download file
download.file(url = url_to_read,
              destfile = (here::here("data", "Nature_PhD_Survey.xlsx")),
              mode = 'wb')
# Read file
survey_raw <- readxl::read_xlsx(here::here("data", "Nature_PhD_Survey.xlsx"))

# Save as CSV for easier loading
write_csv(survey_raw, path = (here::here("data", "survey_raw.csv")))

# Print message
print("This script works!")
}

main(opt$url_to_read)
