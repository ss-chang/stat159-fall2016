# 01-kmeans-app

palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))

library(shiny)
library(readr)
advertising <- read.csv(file = "Advertising.csv", row.names = 1)

ui <- fluidPage(
  headerPanel('Relationships Between Sales and Advertising Channels'),
  sidebarPanel(
    selectInput('xcol', 'Advertising Channel', names(advertising[,names(advertising) != "Sales"]))
),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  
  selectedData <- reactive({
    advertising[, c(input$xcol, "Sales")]
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         pch = 20, cex = 3, col = "tomato")
    abline(lm(advertising$Sales~advertising[,c(input$xcol)]))
  })
  
}

shinyApp(ui = ui, server = server)
