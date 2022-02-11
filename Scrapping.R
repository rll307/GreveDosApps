# Introduction----------------
# Project: GreveDosApps
# File: Scrapping.R
# Objective: Scrapping data for Twitter Analysis
# Researcher: rll307
# Date: 10/02/22 - 17:37:28

# Information----------
writeLines(
  "**Portuguese**:
  Este script foi desenvolvido como forma de auxiliar colegas da área de LC.
  Se você quiser discutir outras aplicações, por favor, me escreva:
  Contato: Rodrigo Esteves de Lima-Lopes
  rll307@unicamp.br
  Outros scripts: http://www.iel.unicamp.br")

writeLines (
  "**English**:
  This script was developed as a way to assist colleagues in the LC area.
  If you need more information or would like to discuss further applications,
  please, drop me a line:
  Contact: Rodrigo Esteves de Lima-Lopes
  rll307@unicamp.br
  Other scripts: http://www.iel.unicamp.br ")

# Packages ----------------------------------------------------------------
library(academictwitteR)


# Scraping the data -------------------------------------------------------
# That will be necessary to use a academic Twitter Account

#1 Get all tweets and save them in the memory and as json files

Strike <- get_all_tweets(
  bearer_token = get_bearer(), 
  query = c('#BrequeDosApps', '#1DiaSemAPP', '#BrequeDosApp'),
  start_tweets = "2020-07-01T00:00:00Z",
  end_tweets = "2020-07-08T00:00:00Z",
  n = 30000,
  data_path = 'data' # Use the best structure to you
  )

# Now let us create a local data frame of tweets
Strike <- bind_tweets(data_path = "data",
                      output_format = "tidy")
















