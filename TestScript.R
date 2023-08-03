#A simple R script for git testing purposes
#load packages
library(tidyverse)
library(ggplot2)

#Define input dataset location
##Note that CSV files are listed in the gitignore file, to prevent them being uploaded to github.
Input_dataset_filename <- 'ThreeYears_CN.csv'

#Read in dataset
Input_dataset <- read.csv(Input_dataset_filename)

#Process data
Processed_dataset <- Input_dataset %>% 
  mutate(sampyear=fa_id%%10000)

# Visualise data
g <- ggplot(data = Processed_dataset) +
  geom_point(aes(x=fbi, y=wf_co2, colour= as.factor(sampyear)))
<<<<<<< HEAD

## Testing - Hello from Colin!
=======
g


## Hello - EWan here!!
>>>>>>> bbc58bb5721248244ccd5d242286cb91c1355419
