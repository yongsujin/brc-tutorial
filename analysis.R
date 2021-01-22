# Set the current working directory
setwd('~/Box Sync/brc-tutorial/')

# Load ggplot library
# If not installed, run
# install.packages('ggplot2')
library(ggplot2)


# Read in data
setwd('~/Downloads/brc-tutorial-main 2/')
data_in <- read.csv("billionton_state_download.2020.csv", header=TRUE)
baseline_data <- subset(data_in, Scenario == "Baseline" & USDA.Region == "Corn Belt" & Feedstock %in% c("Corn", "Soybeans", "Oats", "Sorghum"))
baseline_data_cleaned <- subset(baseline_data, Yield != "null")
baseline_data_cleaned$Yield <- as.numeric(baseline_data_cleaned$Yield)
ggplot(baseline_data_cleaned, aes(x=State, y=Yield, fill=Feedstock)) + geom_bar(stat="identity", position=position_dodge())+xlab('States in Cornbelt')

       