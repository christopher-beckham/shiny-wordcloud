library(shiny)

source("shared.R")

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("title panel"),
  
  fluidRow(
    
    column(3,
           h4("max.words"),
           sliderInput("maxword", label="", min=0, max=400, value=200)
    ),
    
    column(3,
           h4("scale"),
           sliderInput("scale", label="", value=c(1,10), min=0.01, max=20, step=0.01)
    ),
    
    column(3,
           h4("rot.per"),
           sliderInput("rotper", label="", value=0, min=0.0, max=1.0, step=0.1)
    )
    
  ),
  
  fluidRow(
    
    column(3,
           h4("min.freq"),
           sliderInput("minfreq", label="", value=0, min=0.0, max=1.0, step=0.05)
    ),
    
    column(3,
           h4("random.color"),
           checkboxInput("randomcolor", label = "", value = FALSE)
    ),
    
    column(3,
           h4("random.order"),
           checkboxInput("randomorder", label = "", value = FALSE)
    )
  ),
  
  fluidRow(
  
    column(3,
           h4("colors"),
           selectInput("colors", label = "", 
                       choices = scheme.input, selected = 2)
    )
  ),
  
  mainPanel(
    plotOutput("outplot",width="100%",height="600px")
  )
))