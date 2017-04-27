# UI for scatterplot

# Create a shinyUI with a fluidPage layout
shinyUI(fluidPage(
  
    titlePanel("Shiny Exercise"),
            # Add a numbericInput to choose the number of observations
        selectInput("Number",
            label = h3("#observations"),
            choices = list("100" = 100, "200" = 200, "300" = 300), 
            selected = 100),
            
            # Add a selectInput that allows you to select a color from a list of choices
        selectInput("Color",
            label = h3("Color"),
            choices = list("red" = "red",
                           "blue" = "blue",
                           "green" = "green"), 
            selected = "red"),
# Plot the output with the name "scatter"
    mainPanel(
        h3(textOutput("mainPanel Plot")),
        plotOutput("distPlot"),
        width = 12
     )
))