#### Preamble ####
# Purpose: Downloads data from Spotify
# Author: Veyasan Ragulan
# Date: 10 October 2024
# Contact: veyasan.ragulan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(spotifyr)
library(tidyverse)
library('xml2')
library(rvest)

#Get data
radiohead <- get_artist_audio_features("radiohead")
the_national <- get_artist_audio_features("the national")

#### Save data ####
saveRDS(radiohead, "data/01-raw_data/radiohead.rds")
saveRDS(the_national, "data/01-raw_data/the_national.rds")
