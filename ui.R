library(shiny)

shinyUI(fluidPage(
  titlePanel("A simple K means Clustering of the Iris Data Set"),
  sidebarLayout(
    sidebarPanel(
      numericInput('clusters', 'Number of clusters',3,min = 1, max = 6),
      selectInput('xvar','X attribute', choices = names(iris)),
      selectInput('yvar',"Y attribute", choices = names(iris),
                  selected=names(iris)[[2]])
    ),
    mainPanel(
      plotOutput("plot1")
      )
    )
  )
)
