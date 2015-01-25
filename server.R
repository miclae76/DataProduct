library(shiny)

data <- read.csv("perf_history.csv", sep=",", header=T)
colnames(data) <- c("Period", "PriceDate", "Empty", "AAPL","CDW","CTRX","FB","GOOG","GOOGL","INTC","MSFT","MU","QCOM","STX","TECD","TXN","WDC")

## Define a server for the Shiny app
shinyServer(function(input, output) {
        
        dataInput <- reactive({
                subset(data, select=c(input$ticker, input$ticker2), subset=(data$Period >= input$period))
        })
        
        ## Fill in the spot we created for a plot
        output$plot1 <- renderPlot({
                
                ## Render a barplot
                plot(dataInput()[,input$ticker],
                        main=paste(input$ticker, " Vs", input$ticker2, "from", input$period),
                        ylab="Consumption (in EUR)", type="l", col="blue", ylim=c(50,200),
                        xlab="Days")
                lines(dataInput()[,input$ticker2], type="l", col="red")
                legend("topleft", c(input$ticker, input$ticker2), cex=0.8, 
                       col=c("blue","red"), lty=1)
        })
})
