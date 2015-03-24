library(shiny)
 
shinyUI(fluidPage(theme = "bootstrap.css",
  br(),
  titlePanel("Building a Shiny App using IRIS Dataset"),
  br(),

  sidebarLayout(
      

      sidebarPanel(

            h5("Creating scatteplot using iris dataset"), 
             helpText("Please slide inorder to select a range of values."),
            
              sliderInput("Sepal.Length", label = "Sepal.Length Range", min = min(iris$Sepal.Length), 
                         max = max(iris$Sepal.Length),value=c(min(iris$Sepal.Length),max(iris$Sepal.Length))),
             
              sliderInput("Sepal.Width", label = "Sepal.Width Range", min = min(iris$Sepal.Width), 
                         max = max(iris$Sepal.Width), value = c(min(iris$Sepal.Width),max(iris$Sepal.Width))),
             
             
             sliderInput("Petal.Length", label = "Petal.Length Range", min = min(iris$Petal.Length), 
                         max = max(iris$Petal.Length), value = c(min(iris$Petal.Length),max(iris$Petal.Length))),
             
             
             sliderInput("Petal.Width", label = "Petal.Width Range", min = min(iris$Petal.Width), 
                         max = max(iris$Petal.Width), value = c(min(iris$Petal.Width),max(iris$Petal.Width))),
             
             h5("Select inputs for scatter plot"),
             selectInput("xvar", "x-variable:", choices=names(iris[,-5])),
             selectInput("yvar", "y-variable:", choices=names(iris[,-5]),selected = names(iris[2])) ),
   
    
    mainPanel(plotOutput("scatterplot"),br(),br(),br(),tags$tfoot("By : vsskanand"))
    
    
          )
    )
)