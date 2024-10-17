# Create regexcite package using the Hadley Wickham tutorial
library(devtools)
create_package("/Users/ahannah/Desktop/rPackages/regexcite")
usethis::use_git()

load_all() # Makes strsplit1() available for experimentation; simulates the process of building, installing, and attaching the regexcite package
x <- "alfa,bravo,charlie,delta"
strsplit1(x, split = ",")

check() # Gives errors, warnings, notes

use_mit_license() # Creates a LICENSE and LICENSE.md file

# Next, modify strsplit1.R with 'Insert roxygen skeleton'.
# Then convert tihs comment into man/strsplit1.Rd with document()
document()

# Preview help file
?strsplit1

check()

# Install regexcite package into your library via install()
install()

# Now let's attach regexcite
library(regexcite)
x <- "alfa,bravo,charlie,delta"
strsplit1(x, split = ",")

# 1.15 use_testthat()
use_testthat()
use_test("strsplit1")
test()

# 1.15 use_package()
use_package("stringr")
rename_files("strsplit1", "str_split_one")
document()
load_all()
str_split_one("a, b, c", pattern = ", ")

# 1.17 use_github()
use_github()

# 1.18 use_readme_rmd()
use_readme_rmd()
build_readme()
