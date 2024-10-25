#Convertir a txt columna body

library(tidyverse)
library(lubridate)

df <- read.csv('data/tidy_presirvienta.csv')

df <-  ymd_hms(tidy_presirvienta$timestamp)

# Definir el rango de fechas
end_date <- ymd("2024-10-08")

df <- df %>% 
  filter(timestamp <= end_date) %>% 
  select(id, body)

create_safe_filename <- function(id) {
  # Remove special characters and spaces
  safe_id <- gsub("[^[:alnum:]]", "_", as.character(id))
  paste0(safe_id, ".txt")
}

# Create output directory if it doesn't exist
dir.create("output_files", showWarnings = FALSE)

# Loop through each row and save as separate file
for(i in 1:nrow(df)) {
  # Create safe filename from ID
  filename <- file.path("output_files", create_safe_filename(df$id[i]))
  
  # Write the body content to file
  writeLines(as.character(df$body[i]), filename)
  
  # Optional: Print progress
  cat(sprintf("Created file: %s\n", filename))
}
