library(shinydashboard)
library(shiny)
ui<- dashboardPage(
  dashboardHeader(title = "Basic Dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard",tabName = "dashboard",icon = icon("dashboard")),
      menuItem("widget",tabName= "widget", icon = icon("th"))
      )
  ),
  dashboardBody(
    tabItem(
      tabName = "dashboard",
      fluidRow(
        box(plotOutput("plot1",height = 400)),
        box(
          title = "controls",
          sliderInput("slider","number of observations",1,1000,500)
        )
      )
    ),
    tabItem(
      tabName = "widgets",
      h2("widget",h2("widgets rab page under construction")
         )
      )
    )
)
server<- function(input,output){
  set.seed(122)
  histdata<- rnorm(1000)
  output$plot1<- renderPlot({
    data<- histdata[seq_len(input$slider)]
    hist(data)
  })
}
shinyApp(ui,server)
