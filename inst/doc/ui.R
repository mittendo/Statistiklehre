library(shiny)

# Define UI for application that plots different cluster-algorithms

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Cluster-Analyse: Hierarchische Verfahren zur Ermittlung von Clustern (Teilungs- und Agglomerationsverfahren)"),
  
  # Sidebar with a different Input-Fields
  sidebarPanel(
#     radioButtons("Verfahren", "Verfahren",
#                  list("Agglomerativ" = "agnes",
#                       "Teilung" = "diana")),
    selectInput("Verfahren", "Wähle ein Verfahren", choices=c("Agglomerativ", "Teilung")),

      conditionalPanel(
        condition = 'input.Verfahren=="Agglomerativ"',    
        selectInput("Linkage", "Wähle ein Linkage-Verfahren", choices=c("single", "complete", "average"))
    ),
    br(),
    selectInput("Metrik", "Wähle ein Distanzmaß:", choices=c("manhattan", "euclidean")),
    
    checkboxInput("Standard", "Standardisiere Inputdaten", TRUE)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("clustPlot")
    
  )
))
