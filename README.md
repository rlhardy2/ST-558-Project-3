# ST-558-Project-3

GitHub repository used for ST 558 Project 3. Collaborators are Rachel Hardy and Melanie Kahn.

**The R packages used for this project are listed below:**

* tidyverse
* readr
* ggplot2
* shiny
* caret
* rmarkdown

**The analyses created from tis project are linked below:**


**The render() code used to create the above analyses is below:**

interestChannel <- list("data_channel_is_socmed", "data_channel_is_lifestyle", "data_channel_is_entertainment", "data_channel_is_bus", "data_channel_is_tech", "data_channel_is_world")

outputFile <- paste0(interestChannel, ".html")

params = lapply(interestChannel, FUN = function(x){list(dataChannel = x)})

reports <- tibble(outputFile, params)

apply(reports, MARGIN = 1,
      FUN = function(x){
        render(input = "./Project3.Rmd", output_file = x[[1]], params = x[[2]])
})
