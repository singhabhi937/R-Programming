# setting working directory
#setwd("/media/abhishek/New Volume/R Code")
library(shiny)
ui<-fluidPage(
  titlePanel(h2("This is the reactive demo page")),
  sidebarLayout(sidebarPanel(textInput("textInput",h2("Please enter the text here")),
                 selectInput("selectInput","Enter Your Age",choices = 12:30,multiple = T)),
  mainPanel(h2(paste("You will see the typed text here")),textOutput("textOutput"),
            textOutput("selectOutput")
            )
  )
  
  )
server=shinyServer(function(input,output)
  {
   
   output$textOutput=renderText({
     paste(input$textInput)
     
   }  )
   
   output$selectOutput=renderText({
     paste(input$selectInput)
     }
     )
}    
)



shinyApp(ui = ui,server = server)