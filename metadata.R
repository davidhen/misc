# Create metadata tibble

#Initiate table

library(tidyverse)
library(lubridate)


metadata <- tibble(
  object = "test_object",
  class = "data_frame",
  date_created = Sys.Date(),
  notes = "Character vector for notes about object"
)

#save(metadata, file = "~\metatdata.rds")

#Add rows

#load(file = "~\metatdata.rds")

metadata %>%
  add_row(object = "",
          class = "",
          date_created = Sys.Date(),
          notes = "") -> metadata

#save(metadata, file = "~\metadata.rds")