# Coursera - Data Science Specialization - Data Products Assignment
# hmarroquin 2016-01-29

# Function to calculate dog age.
# First two years = 10.5
# subsequent years = 4
dog2human <- function(Dog)(
      if (Dog < 3) {
           Dog*10.5
      }else {
           21 + (Dog - 2)*4
      }
      
)


shinyServer(
      function(input,output){
            output$inputDog <- renderPrint({input$Dog})
            output$outputHuman <- renderPrint({dog2human(input$Dog)})
            output$plot <- renderPlot({barplot(c(input$Dog,dog2human(input$Dog)),col ="Red", xlab = 'Doggie', ylab = 'Years')})
            
      }
      
)



