library(shiny)

ui <- fluidPage(
  numericInput("number", "Enter Value", 50, 0, 100),
  textOutput("text")
)

server <- function(input, output, session) {
  output$text <- renderText(paste("Your number is", input$number))
}

shinyApp(ui, server)