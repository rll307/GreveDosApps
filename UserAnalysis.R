# Introduction----------------
# Project: GreveDosApps
# File: UserAnalysis.R
# Objective: To create a network of users
# Researcher: rll307
# Date: 10/02/22 - 22:24:16

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

# Packages ----------
library(quanteda)

# Step 1 -----------
#Creating the Quanteda corpus
d1 <- corpus(Strike, text_field = 'text')

#Step 2 ------------
# Creating DFM
d1.dfm <- dfm(d1, remove_punct = TRUE)

#Step 3 ----------
#Selecting the users
d1.users.dfm <- dfm_select(d1.dfm, pattern = ("@*"))

#Step 4 ----------
#Selecting the most common users
D1.top.users <- names(topfeatures(d1.users.dfm , 100))

#Step 5 ----------
# Creating a user's FCM
d1.users.fcm <- fcm(d1.users.dfm)

#Slecting the most relevant users from the total FCM
d1.users.top <- fcm_select(d1.users.fcm, pattern = D1.top.users)

#Step 6 ----------
# Creating a data frame and exporting for Gephi

d1.users.top %>%
  convert(., to = "data.frame")%>%
  write.csv(., 'users01.csv',row.names= FALSE)