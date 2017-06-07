library(shiny)
library(plotrix)
library(grid)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    isolate({
      plot(c(-1,1),c(-1,1), type = 'n')
      
      
    })
    
    draw.circle(-0.25,0,input$radius)
    draw.circle(0.25,0,input$radius2)
    
    
  })
  
})
