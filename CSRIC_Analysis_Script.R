# CSRIC Communications Security & Reliability Analysis Script
# Author: Elvira Khwatenge
# Date: `r Sys.Date()`

# Load necessary libraries
library(dplyr)
library(ggplot2)
library(reshape2)

# Load the dataset (update the path as necessary)
csric_data <- read.csv("CSRIC_Best_Practices_Raw.csv")

# Preview the data
head(csric_data)

# Data Cleaning ----------------------------------------------------------

# 1. Check for missing values
missing_values <- colSums(is.na(csric_data))
print("Missing values per column:")
print(missing_values)

# 2. Remove duplicates
csric_data <- csric_data[!duplicated(csric_data), ]

# 3. Convert relevant columns to factors
csric_data$Priority <- as.factor(csric_data$Priority)
csric_data$Public.Safety.and.Disaster <- as.factor(csric_data$Public.Safety.and.Disaster)
csric_data$Network.Operator <- as.factor(csric_data$Network.Operator)
csric_data$Industry.Role.s. <- as.factor(csric_data$Industry.Role.s.)

# Exploratory Data Analysis (EDA) ----------------------------------------

# Summary Statistics
print("Summary statistics for key columns:")
summary(csric_data)

# Distribution of Priority Levels
ggplot(csric_data, aes(x = Priority)) + 
  geom_bar() + 
  ggtitle("Distribution of Priority Levels") +
  xlab("Priority Level") +
  ylab("Count") +
  theme_minimal() +
  ggsave("Priority_Level_Distribution.png")

# Distribution of Network Type
ggplot(csric_data, aes(x = Network.Operator)) + 
  geom_bar() + 
  ggtitle("Distribution of Network Operators") +
  xlab("Network Operator") +
  ylab("Count") +
  theme_minimal() +
  ggsave("Network_Operator_Distribution.png")

# Distribution of Industry Role
ggplot(csric_data, aes(x = Industry.Role.s.)) + 
  geom_bar() + 
  ggtitle("Distribution of Industry Roles") +
  xlab("Industry Role") +
  ylab("Count") +
  theme_minimal() +
  ggsave("Industry_Role_Distribution.png")

# Statistical Analysis ---------------------------------------------------

# Chi-squared test for Priority Level and Network Operator
table_priority_network <- table(csric_data$Priority, csric_data$Network.Operator)
chi_test_priority_network <- chisq.test(table_priority_network)
print("Chi-squared test for Priority Level and Network Operator:")
print(chi_test_priority_network)

# Chi-squared test for Priority Level and Industry Role
table_priority_role <- table(csric_data$Priority, csric_data$Industry.Role.s.)
chi_test_priority_role <- chisq.test(table_priority_role)
print("Chi-squared test for Priority Level and Industry Role:")
print(chi_test_priority_role)

# Visualizing Relationships ----------------------------------------------

# Heatmap for Priority Level and Network Operator association
heatmap_data_network <- as.data.frame(table_priority_network)
ggplot(heatmap_data_network, aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(title = "Heatmap of Priority Level and Network Type", x = "Priority Level", y = "Network Operator") +
  theme_minimal() +
  ggsave("Heatmap_Priority_Network_Operator.png")

# Heatmap for Priority Level and Industry Role association
heatmap_data_role <- as.data.frame(table_priority_role)
ggplot(heatmap_data_role, aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(title = "Heatmap of Priority Level and Industry Role", x = "Priority Level", y = "Industry Role") +
  theme_minimal() +
  ggsave("Heatmap_Priority_Industry_Role.png")

# Reproducibility and Validation -----------------------------------------

# Save the cleaned data for reproducibility
write.csv(csric_data, "CSRIC_Best_Practices_Cleaned.csv", row.names = FALSE)

# End of Script
print("Analysis complete. Cleaned data and visualizations saved.")
