# Before you get going you're going to need some packages available to you.
# If you're not sure what those are, be sure to do your reading!
# https://ui.josiahparry.com/r-as-a-calculator.htm

# 1. Install the tidyverse
install.packages("tidyverse")

# 2. Install remotes which will help us install the
# supplemental urban informatics toolkit package {uitk}
install.packages("remotes")

# 3. Install {uitk}
remotes::install_github("josiahparry/uitk")

# 4. Install some other helpful packages
install.packages("skimr")
install.packages("janitor")
