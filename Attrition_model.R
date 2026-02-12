# =====================================================
# Mini HR Analytics Project: Employee Attrition Prediction
# HR Analytics Portfolio Project
# =====================================================

# Load necessary libraries
library(ggplot2)
library(rpart)
library(rpart.plot)

# -----------------------
# Step 1: Simulate HR dataset
# -----------------------
set.seed(123)  # for reproducibility

# Simulate 100 employees
n <- 100

data <- data.frame(
  Age = sample(22:60, n, replace = TRUE),
  JobLevel = sample(1:5, n, replace = TRUE),
  YearsAtCompany = sample(0:20, n, replace = TRUE),
  JobSatisfaction = sample(1:5, n, replace = TRUE),
  Overtime = sample(c("Yes", "No"), n, replace = TRUE),
  Attrition = sample(c("Yes", "No"), n, replace = TRUE)
)

# Ensure factors
data$Overtime <- as.factor(data$Overtime)
data$Attrition <- as.factor(data$Attrition)

# -----------------------
# Step 2: Explore the Data
# -----------------------
# Check first few rows
head(data)

# Summary statistics
summary(data)

# Plot attrition by job satisfaction
ggplot(data, aes(x = JobSatisfaction, fill = Attrition)) +
  geom_bar(position = "fill") +
  ylab("Proportion") +
  ggtitle("Attrition Rate by Job Satisfaction")

# Plot attrition by overtime
ggplot(data, aes(x = Overtime, fill = Attrition)) +
  geom_bar(position = "fill") +
  ylab("Proportion") +
  ggtitle("Attrition Rate by Overtime")

# -----------------------
# Step 3: Build Decision Tree Model
# -----------------------
tree_model <- rpart(Attrition ~ Age + JobLevel + YearsAtCompany + JobSatisfaction + Overtime,
                    data = data, method = "class")

# Plot the tree
rpart.plot(tree_model, main = "Decision Tree: Employee Attrition")

# -----------------------
# Step 4: Make Predictions and Evaluate
# -----------------------
pred <- predict(tree_model, data, type = "class")

# Confusion matrix
conf_mat <- table(Predicted = pred, Actual = data$Attrition)
print(conf_mat)

# Accuracy
accuracy <- sum(pred == data$Attrition) / nrow(data)
cat("Model accuracy:", round(accuracy*100, 2), "%\n")

# -----------------------
# Step 5: Save Output
# -----------------------
# Create output folder if it doesn't exist
if(!dir.exists("output")) dir.create("output")

# Save confusion matrix
write.csv(as.data.frame(conf_mat), "output/confusion_matrix.csv", row.names = FALSE)

# Save plots
ggsave("output/attrition_by_job_satisfaction.png")
ggsave("output/attrition_by_overtime.png")
rpart.plot(tree_model, main = "Decision Tree: Employee Attrition")
