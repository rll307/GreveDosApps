# Introduction----------------
# Project: GreveDosApps
# File: Timeline.R
# Objective: Analyse Twitter timelines
# Researcher: rll307
# Date: 11/02/22 - 14:25

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

# Packages--------------------
library(tidyverse)
library(dplyr)

# Selecting the tweets----------------------------------------------------------------
Timeline <- Strike[,c("created_at","is_quote",'is_retweet')] 

#### Originals
Timeline.O <- subset(Timeline, is_quote == FALSE & is_retweet == FALSE)

#Selecting the date
Timeline.O <- Timeline.O[,"created_at"] |>
  data.frame()
colnames(Timeline.O) <- "created_at"

# Seting the dates correctly 
Timeline.O$created_at <- format(as.POSIXct(Timeline.O$created_at,format = '%Y/%m/%d %H:%M:%S'),format = '%Y/%m/%d')

# Creating a table
table.O <- as.data.frame(table(Timeline.O))
colnames(table.O)[1] <- "Dates"
table.O$Dates <- as.Date(table.O$Dates, format = '%Y/%m/%d')

# Repeat step 1 for each category:
## RTs (is_quote == FALSE & is_retweet == TRUE)
## Quotes (is_quote == TRUE & is_retweet == FALSE)
















