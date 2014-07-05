library(shiny)

library(tm)
library(wordcloud)

source("shared.R")

txt = Corpus(DirSource("text/"))
txt = tm_map(txt, stripWhitespace)
txt = tm_map(txt, tolower)
txt = tm_map(txt, removeWords, stopwords("english"))
txt = tm_map(txt, removePunctuation)

#col.scheme = c("#fd8d3c","#fc4e2a","#e31a1c","#bd0026","#800026")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$maintext = renderText({input$colors})
  
  output$outplot = renderPlot({
    wordcloud(txt,
              scale=c(input$scale[2],input$scale[1]),
              min.freq=input$minfreq,
              random.order=input$randomorder,
              max.words=input$maxword,
              colors=brewer.pal( 5, schemes[ as.integer(input$colors) ] ),
              rot.per=input$rotper,
              fixed.asp=FALSE,
              random.color=input$randomcolor)    
  })

})