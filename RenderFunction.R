# Required Libraries: Running the code chunk below loads the `tidyverse` and `rmarkdown` packages.

library(tidyverse)
library(rmarkdown)

# Automation


interestChannel <- list("data_channel_is_socmed", "data_channel_is_lifestyle", "data_channel_is_entertainment", "data_channel_is_bus", "data_channel_is_tech", "data_channel_is_world")

outputFile <- paste0(interestChannel, ".md")

params <- lapply(interestChannel, FUN = function(x){list(dataChannel = x)})

reports <- tibble(outputFile, params)

apply(reports, MARGIN = 1,
      FUN = function(x){
        render(input = "Project3.Rmd", output_file = x[[1]], params = x[[2]])
      })
