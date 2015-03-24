library(shiny)
library(ggplot2)
 
shinyServer(function(input, output) {
  #reactive() lesson 6 shiny-tutorial
  dataset=reactive(iris[(iris$Sepal.Length>=input$Sepal.Length[1] & iris$Sepal.Length<=input$Sepal.Length[2]&
                         iris$Sepal.Width>=input$Sepal.Width[1] & iris$Sepal.Width<=input$Sepal.Width[2]&
                         iris$Petal.Length>=input$Petal.Length[1] & iris$Petal.Length<=input$Petal.Length[2]&
                         iris$Petal.Width>=input$Petal.Width[1] & iris$Petal.Width<=input$Petal.Width[2]),])
                            
  #renderPlot() lesson 6 shiny-tutorial
  output$scatterplot=renderPlot(ggplot(dataset(),aes_string(x=input$xvar, y=input$yvar,color="Species"))+ geom_point()+
    ggtitle("Scatter Plot")
    )


})