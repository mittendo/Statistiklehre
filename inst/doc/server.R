library(shiny)
library(cluster)

# Define server logic required to plot different cluster-algorithms
shinyServer(function(input, output) {
  
  # Function that generates a plot of the distribution. The function
  # is wrapped in a call to reactivePlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically 
  #     re-executed when inputs change
  #  2) Its output type is a plot 
  #
  output$clustPlot <- reactivePlot(function() {
    data(votes.repub)
    agn1 <- agnes(votes.repub, metric = input$Metrik, method=input$Linkage, stand = input$Standard)
    dian1<-diana(votes.repub, metric=input$Metrik, stand=input$Standard)
    if(input$Verfahren=="Agglomerativ")
    plot(agn1, main=paste("Agglomeratives Clustern, ",paste(toupper(substring(input$Linkage, 1,1)), substring(input$Linkage, 2), sep="", collapse=" "), "-Linkage-Verfahren", sep="")) else    plot(dian1, main=paste("Teilungsverfahren ",  sep=""))
           
    
  })
  

})

