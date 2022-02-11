# Introduction----------------
# Project: GreveDosApps
# File: functions.R
# Objective: Functions for the anonimysation script
# Researcher: rll307
# Date: 10/02/22 - 18:44:53

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

# Function 1 --------------------------------------------------------------
# This Function extracts screenames from a data frame of tweets

screenames<-function(text){
  text2 <-str_extract_all(text, "(?<=\\B\\@)[^\\s]+")
  text2<-unlist(text2)
  text2<-unique(text2)
  return(text2)}

# Function 2 --------------------------------------------------------------
# Creating an anonymous set of handles
hashed_id <- function(x, salt) {
  y <- paste(x, salt)
  y <- sapply(y, function(X) digest(X, algo="sha1"))
  y <-paste0("@",y)
  as.character(y)
}





