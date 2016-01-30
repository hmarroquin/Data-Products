# Coursera - Data Science Specialization - Data Products Assignment
# hmarroquin 2016-01-29


shinyUI(
      pageWithSidebar(
            # Dogs to Human Years
            
            headerPanel("Dog to Human Years Calculator"),
            
            sidebarPanel(
                  h5('The app will take the age of any dog and calcualte the equivalent age in human years.'),
                  numericInput('Dog','Enter dog age (years)',0,min = 1, max = 20,step = 1),
                  submitButton('Go!')
            ),
            mainPanel(
                  h3('Age of your dog in Human Years'),
                  h4('Dog years:'),
                  verbatimTextOutput('inputDog'),
                  h4('In Human Years:'),
                  verbatimTextOutput('outputHuman'),
                  plotOutput('plot')
            )
      )
  
  
  
)