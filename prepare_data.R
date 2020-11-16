# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
open_data(iris)

git_update("Added My Data")
RStudio.Version()

load_data()

#Make boxplot
with(iris, boxplot(Sepal.Length ~ Species))


#anova of Species regressed on Sepal.Length
fit <- with(iris, aov(Sepal.Length ~ Species))
TukeyHSD(fit)

# Df Sum Sq Mean Sq F value Pr(>F)    
# Species       2  63.21  31.606   119.3 <2e-16 ***
#   Residuals   147  38.96   0.265                   
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# > TukeyHSD(fit)
# Tukey multiple comparisons of means
# 95% family-wise confidence level
# 
# Fit: aov(formula = Sepal.Length ~ Species)
# 
# $Species
# diff       lwr       upr p adj
# versicolor-setosa    0.930 0.6862273 1.1737727     0
# virginica-setosa     1.582 1.3382273 1.8257727     0
# virginica-versicolor 0.652 0.4082273 0.8957727     0