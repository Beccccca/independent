library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Choose your probability"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      
      sliderInput("radius",
                  "Probability of A",
                  min = 0,
                  max = 0.4,
                  value = 0.2),
      sliderInput("radius2",
                  "Probability of B",
                  min = 0,
                  max = 0.4,
                  value = 0.2)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))