# GreveDosApps
## Scripts for my article 
LIMA-LOPES, R. E. DE. No delivery today: Hashtags and strike movement on Twitter. The article is still under review. 

**Rodrigo Esteves de Lima Lopes** \
*Campinas State University*  \
[rll307@unicamp.br](mailto:rll307@unicamp.br)


## Thank you note

I would like to thank [CNPq](https://www.gov.br/cnpq/pt-br) for financing this project.

# Introduction
I hope this script is useful for researchers in fields of linguistics and applied linguistics. Unfortunately due to regulations form the ethic research committee, I am unable to provide my data (actual comments and their classification). However, the article explains all classification and a link for the post is available (see bellow).

If you have any further questions, please feel free to drop me a line.

# Context

Each script brings a different research step:

- [Data scraping](Scrapping.R)
- [Anonimysation](Anonimysation.R)
  - [Functions](Functions.R)
- [User Network Analysis](UserAnalysis.R)
- [Hashtag Network Analysis](HashtagsAnalysis.R)
- [Timeline of tweets](Timeline.R)
- [Ploting](Ploting.R) 

Inside each script is a step-by-step tutorial.

# Before you start

You will need the latest versions of the following packages:

- [Quanteda](https://quanteda.io): Text cleaning, concordancing examples, creating the term matrices for network analysis
- [Dplyr](https://dplyr.tidyverse.org): Data consolidation
- [Digest](https://github.com/eddelbuettel/digest): Anonymisation of Twitter handles
- [Ggplot2](https://ggplot2.tidyverse.org): Plotting  all graphs but networks
- [academictwitteR](https://github.com/cjbarrie/academictwitteR): For data collection

It will also be necessary a [Twitter Academic Account](https://developer.twitter.com/en/products/twitter-api/academic-research).  

# Acknowledgments

I would like to express my gratitude to CNPq (Brazilian National Council for Scientific and Technological Development) for financing this research.

#Disclaimer
Please, note that some tweets might not be available when you do the scrapping. Besides, sometimes, Twitter API delivers a different set of data. 

In this tutorial I am not going to cover [Gephi](https://gephi.org), used for network plotting. 