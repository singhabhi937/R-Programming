library(shiny)
shinyUI(fluidPage(
  titlePanel(h2("The addition calculator")),
  sidebarLayout(
    sidebarPanel(
                numericInput("firstinput",h3("Enter the first no"),value=150),
                numericInput("secondinput",h3("Enter the second no"),value=56),
                actionButton("btn",h3("calculate"))
                
),
mainPanel(
  textOutput("textoutput"),
  h2("This is the answer")
  )
)
)
)
