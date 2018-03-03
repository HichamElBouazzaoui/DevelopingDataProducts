library(shiny)

shinyServer(function(input, output){
  trainingData <- reactive({
    iris[,c(input$xvar, input$yvar)]
  })
  
  clusters <- reactive({
    kmeans(trainingData(),centers = input$clusters)
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 1, 0))
    plot(trainingData(), col = clusters()$cluster, pch = 20, cex = 3)
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
  })
})