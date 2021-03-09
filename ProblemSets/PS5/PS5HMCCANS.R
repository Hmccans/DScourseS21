library(tidyverse)
library(rvest)

url<- "https://en.wikipedia.org/wiki/List_of_datasets_for_machine-learning_research#Curated_repositories_of_datasets"
STsub <- read_html(url)


## mw-content-text > div.mw-parser-output > table:nth-child(19)
#mw-content-text > div.mw-parser-output > table:nth-child(19)
##mw-content-text > div.mw-parser-output > table:nth-child(94)
##mw-content-text > div.mw-parser-output > table:nth-child(94)
##mw-content-text > div.mw-parser-output > table:nth-child(94)
#//*[@id="mw-content-text"]/div[1]/table[37]
STSUBT <- read_html(url) %>%
          html_nodes('table.wikitable:nth-child(94)') %>%
           `[[`(1)%>%
          html_table(fill=TRUE)
write.csv(STSUBT, file="Data_ML.csv")


library(fredr)
df<-fredr(
  series_id="B235RC1Q027SBEA",
  frequency="q",
  units="lin")


write.csv(df, file="Tariff_Income.csv")

