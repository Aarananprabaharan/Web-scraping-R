#step:1 Framing the question
#Step:2 Data Collection
#Check whether you can scrap
library(robotstxt)
path<-paths_allowed("https://books.toscrape.com/")
link<-"https://books.toscrape.com/"
#Read the website
library(rvest)
web<-read_html(link)
Name<-web%>%html_nodes("h3")%>%html_text()
price<-web%>%html_nodes(".price_color")%>%html_text()
availability<-web%>%html_nodes(".availability")%>%html_text()
books.Name=data.frame(Name,price,availability)
View(books.Name)
write.csv(books.Name,"book_products.csv")