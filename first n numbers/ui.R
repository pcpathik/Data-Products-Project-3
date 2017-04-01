#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Sum of first N natural number"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        helpText("An application to calculate the sum of first N natural number."),
        numericInput("input", "Value till which you want sum to be genrated.", 5, min = 5, max = 1000, step = 1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
        textOutput("text1"),
        plotOutput("distPlot")

    )
  )
))
