library(shiny)
shinyServer(function(input, output) {
      titanic <- as.data.frame(Titanic)
      output$total = renderText(sum(subset(subset(subset(titanic, 
                                                         Sex == input$gender), 
                                                  Age == input$age), 
                                           Class == input$class, select = Freq)))
      output$survivors = renderText(sum(subset(subset(subset(subset(titanic, 
                                                             Sex == input$gender), 
                                                      Age == input$age), 
                                               Class == input$class), 
                                        Survived == "Yes", select = Freq)))
      output$deaths = renderText(sum(subset(subset(subset(subset(titanic, 
                                                             Sex == input$gender), 
                                                      Age == input$age), 
                                                Class == input$class), 
                                          Survived == "No", select = Freq)))
      output$rate = renderText(100*sum(subset(subset(subset(subset(titanic, 
                                                               Sex == input$gender), 
                                                        Age == input$age), 
                                                 Class == input$class), 
                                          Survived == "Yes", select = Freq))
                               /
                                     sum(subset(subset(subset(titanic, 
                                                                Sex == input$gender), 
                                                        Age == input$age), 
                                                 Class == input$class, select = Freq))
            
            
            
            
            
            
            
      )
})
#subset(subset(titanic, Sex == "Male"), Age == "Child")
