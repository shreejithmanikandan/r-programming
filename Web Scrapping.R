#IMPORTING LIBRABRIES
library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)
#SCRAPPING WEBSITE
url<- 'https://www.bikewale.com/new-bike-search/best-250cc-bikes/'

#ALLOWABILITY
path = paths_allowed(url)

#HTML ELEMENT FROM WEBSITE
web<- read_html(url)
View(web)

#SEGREGATE NAMES
#ENGINE CC
engine = web%>% html_nodes(".o-cQa-DfF:nth-child(1) .o-cpNAVm")%>% html_text()
 View(engine)

#WEIGHT
weight= web%>% html_nodes(".o-fHmpzP:nth-child(2) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(6) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(13) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(15) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(17) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , a+ .o-fzpihx .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(20) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(16) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(18) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(10) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(9) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(7) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-fHmpzP:nth-child(3) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm , .o-cQa-DfF:nth-child(4) .o-cpNAVm , .o-fHmpzP:nth-child(4) .o-cQa-DfF~ .o-cQa-DfF+ .o-cQa-DfF .o-cpNAVm")%>% html_text()
View(weight)

#PRICE
price = web%>% html_nodes(".o-byFsZJ.o-bVSleT")%>% html_text()
View(price)


BIKE_PRICE= data.frame(engine,weight,price)
View(BIKE_PRICE)

