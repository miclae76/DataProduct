library(shiny)

# Define the overall UI
shinyUI(

  # Use a fluid Bootstrap layout
  fluidPage(

    # Give the page a title
    titlePanel("Stock Performance History Comparison"),

    # Generate a row with a sidebar
    sidebarLayout(

      # Define the sidebar with one input
      sidebarPanel(
        selectInput("ticker", "Select Ticker :",
                    choices=c("AAPL","CDW","CTRX","FB","GOOG","GOOGL","INTC","MSFT","MU","QCOM","STX","TECD","TXN","WDC")),
        selectInput("ticker2", "Select Ticker to compare :",
                    choices=c("AAPL","CDW","CTRX","FB","GOOG","GOOGL","INTC","MSFT","MU","QCOM","STX","TECD","TXN","WDC")),
        sliderInput("period", "Select Period : ", value = 2012, min = 2012, max = 2014, step = 1)
        ),

      # Create a spot for the barplot
      mainPanel(
        plotOutput("plot1")))))
