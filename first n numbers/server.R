#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x <- input$input
    y <- seq(1:x)
    z <- cumsum(y)

    # draw the histogram with the specified number of bins
    plot(y,z, type = "l", main = "How the sum grows", xlab = "Number", ylab = "Sum")

  })
  output$text1 <- renderText({paste("Sum of the first ", input$input, " natural number is ", sum(seq(1:input$input)))})

})
