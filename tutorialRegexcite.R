# Create regexcite package using the Hadley Wickham tutorial
library(devtools)
create_package("/Users/ahannah/Desktop/rPackages/regexcite")
usethis::use_git()

load_all() # Makes strsplit1() available for experimentation; simulates the process of building, installing, and attaching the regexcite package
x <- "alfa,bravo,charlie,delta"
strsplit1(x, split = ",")
