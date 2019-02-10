#Loading the rvest package
library('rvest')

#Specifying the url for desired website to be scraped
url <- 'http://www.imdb.com/search/title?count=100&release_date=2016,2016&title_type=feature'

#Reading the HTML code from the website
webpage <- read_html(url)
#Using CSS selectors to scrap the rankings section
rank_data_html <- html_nodes(webpage,'.text-primary')

#Converting the ranking data to text
rank_data <- html_text(rank_data_html)

#Let's have a look at the rankings
head(rank_data)

#Data-Preprocessing: Converting rankings to numerical
rank_data<-as.numeric(rank_data)

#Let's have another look at the rankings
head(rank_data)

###let's try another site

url <- 'http://fluxnet.fluxdata.org/sites/site-list-and-pages/'
#Reading the HTML code from the website
webpage <- read_html(url)
#Using CSS selectors to scrap the rankings section
rank_data_html <- html_nodes(webpage,'td , a')
rank_data_html
#Converting the ranking data to text
rank_data <- html_text(rank_data_html)
rank_data
#Let's have a look at the rankings
head(rank_data)

