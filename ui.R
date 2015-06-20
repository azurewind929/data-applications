library(shiny)

#Define UI for application that
shinyUI(pageWithSidebar(
  #Appication title
  headerPanel("Iris statistics by Shiny!"),
  sidebarPanel(
    selectInput("type", "Please choose the iris species:", choices=c("setosa", "versicolor", "virginica")),
    selectInput("variable", "Please choose the variable you are interested in:", choices=c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")),
    dateInput("date","Date:")
    ),
  mainPanel(
    plotOutput("Histogram"),
    h3("Summary of data:"),
    verbatimTextOutput("summary"),
    h3("Date:"),
    verbatimTextOutput("date")
    )
  ))

