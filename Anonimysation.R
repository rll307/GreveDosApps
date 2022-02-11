# Introduction----------------
# Project: GreveDosApps
# File: Anonimysation.R
# Objective: Functions for creating anonymous twitter handles
# Researcher: rll307
# Date: 10/02/22 - 18:37:19

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
library(stringr)
library(digest)
library(stringi)

# Functions ---------------------------------------------------------------
source('Functions.R')

# Step 1 ------------------------------------------------------------------
# Get the names from the screename column 
users.1 <- Strike$screen_name
users.1 <- unique(users.1)

# Step 2 ------------------------------------------------------------------
# Gets screenames from text
users.1.2 <- screenames(Strike$text)
users.1.2 <- unique(users.1.2)
# join them all
users <-  c(users.1,users.1.2) |>
  unique()
users <-users |>
  data.frame()

# step 3 ------------------------------------------------------------------
# Creating a data frame with columns oldname and new name
users$new.name <- hashed_id(users$users, "YourSaltHere")
#Creating a column with @ for the body of the tweets
users$original <- paste0(rep("@", length(users$users)), users$users)

# Step 4  -----------------------------------------------------------------
#Making the actual substitution

#From the column screename
Strike$screen_name <-
  stri_replace_all_fixed(str = Strike$screen_name, 
                         pattern = users$users, 
                         replacement = users$new.name,
                         vectorize_all = FALSE)
#from the text
Strike$text <-
  stri_replace_all_fixed(str = Strike$screen_name, 
                         pattern = users$original, 
                         replacement = users$new.name,
                         vectorize_all = FALSE)

#Anonimisation is done














