library(shiny)
library(datasets)
shinyServer(function(input, output) {
  datasetinput<- reactive({iris})
  output$Histogram<- renderPlot({
    irisdata<-datasetinput()
    irisdata<-irisdata[irisdata$Species==input$type,input$variable]
    hist(irisdata, col="lightblue", breaks=12, xlab=input$variable, main=paste("Histogram of", input$variable, "of", input$type, sep=" "))
  })
  output$summary<- renderPrint({
    irisdata<-datasetinput()
    irisdata<- irisdata[irisdata$Species==input$type,input$variable]
    summary(irisdata)
  })
  output$date<- renderPrint({input$date})
}
  )