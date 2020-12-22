

library(RWordPress)
library(knitr)

setwd("C:/Users/nickp/Documents/WordpressR")

#if (!require('RWordPress')) {
#  devtools::install_github(c("duncantl/XMLRPC", "duncantl/RWordPress"))
#}
opts_knit$set(upload.fun = function(file){uploadFile(file)$url})

#log into your wordpress account
options(WordpressLogin = c(lillegubbe = 'Pachelbel3'),
        WordpressURL = 'https://nmimms.com/xmlrpc.php')
#publish your work
knit2wp('RecipeParser.Rmd', 
        title = 'Test Basic Recipe Parser',
        publish = F,
        categories = 'Data Projects')

