library(shiny)

shinyServer(function(input, output)
  {
  calculate=eventReactive(input$btn,{input$firstinput+input$secondinput
    })
  output$textoutput=renderText({
    calculate()
          })
  
})