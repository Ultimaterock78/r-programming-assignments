
install.packages("AER")

data("MurderRates", package = "AER")
head(MurderRates)

# Task 1

# Scatter plot
plot(MurderRates$income, MurderRates$rate,
     main   = "Base: Income vs. Murder Rate",
     xlab   = "Income",
     ylab   = "Rate")

# Histogram
hist(MurderRates$rate,
     main   = "Base: Distribution of Murder Rates",
     xlab   = "Rate")

# Task 2

library(lattice)

# Conditional scatter plot (small multiples)
xyplot(rate ~ income | factor(southern),
       data = MurderRates,
       main = "Lattice: Murder Rate vs. Income by the South")

# Box-and-whisker plot
bwplot(rate ~ factor(southern),
       data = MurderRates,
       main = "Lattice: Murder Rate by the South")

# Task 3

library(ggplot2)

# Scatter plot with smoothing
ggplot(MurderRates, aes(x = income, y = rate, color = factor(southern))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Murder Rate vs. Income with trend by Southern Group")

# Faceted histogram
ggplot(MurderRates, aes(rate)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ southern) +
  labs(title = "ggplot2: Murder Rate distribution by Southern Group")
