library(shiny)

ui <- fluidPage(
  "My shinylive demo",
  br(),
  "This was automatically deployed by GitHub Actions",
  numericInput("number", "Enter Value", 50, 0, 100),
  textOutput("text")
)

server <- function(input, output, session) {
  output$text <- renderText(paste("Your number is", input$number))
}

shinyApp(ui, server)