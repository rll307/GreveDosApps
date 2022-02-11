# Introduction----------------
# Project: GreveDosApps
# File: Plots.R
# Objective: Plotting
# Researcher: rll307
# Date: 11/02/22 - 14:40:58

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

#Packages----------
library(ggplot2)


# Timeline 1----------------------------------------------------------------


ggplot() + 
  geom_line(data = table.ori, aes(x = Dates, y = Freq,group = 1), color = "red") +
  geom_line(data = table.quote, aes(x = Dates, y = Freq,group = 2), color = "blue") +
  geom_line(data = table.RT, aes(x = Dates, y = Freq,group = 3), color = "steelblue") +
  
  geom_point(data = table.ori, aes(x = Dates, y = Freq, size = Freq)) +
  geom_point(data = table.quote , aes(x = Dates, y = Freq, size = Freq)) +
  geom_point(data = table.RT, aes(x = Dates, y = Freq, size = Freq)) +
  geom_label(data = subset(table.ori, Freq > 2000),
             aes(x = Dates, y = Freq, label = Freq),fill = "red", color = 'yellow') +
  geom_label(data = subset(table.quote, Freq > 1300),
             aes(x = Dates, y = Freq, label = Freq),fill = "blue", color = 'yellow') +
  geom_label(data = subset(table.RT, Freq > 7000),
             aes(x = Dates, y = Freq, label = Freq),fill = "steelblue", color = 'white') +
  theme(legend.position = c(0.10,0.55))

# Heatmap------------------------

Original<-ggplot(timeline.ori2, aes(x = Dates, y = Freq)) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  theme_minimal()+
  scale_fill_distiller(palette= "Paired", direction=1) +
  theme(legend.position=c(0.49, 0.5), legend.title=element_text(size=20),legend.text=element_text(size=15)) + labs(fill = "Original Tweets")

RT <- ggplot(timeline.RT2, aes(x = Dates, y = Freq)) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  scale_fill_distiller(palette= "Paired", direction=1) +
  theme_minimal()+
  theme(legend.position=c(0.45, 0.5), legend.title=element_text(size=20),legend.text=element_text(size=15)) + labs(fill = "Retweets")

Quote <- ggplot(timeline.quote2, aes(x = Dates, y = Freq)) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  scale_fill_distiller(palette= "Paired", direction=1) +
  theme_minimal()+
  theme(legend.position=c(0.45, 0.5), legend.title=element_text(size=20),legend.text=element_text(size=15)) + labs(fill = "Quotes")


ggpubr::ggarrange(Original, Quote, RT, 
                  ncol = 1, nrow = 3)
