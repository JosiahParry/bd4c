library(tidyverse)
library(googlesheets4)


survey_cols <- c(
  "career_stage",
  "degree_enrollment",
  "degree_program",
  "os",
  "gender_identity",
  "ethnicity",
  "programming_experience",
  "programming_language",
  "programming_familiarity",
  "programming_frequency",
  "max_num",
  "additional_tools",
  "databases",
  "excel",
  "simple_analysis",
  "tidy_data",
  "wide_data",
  "data_management",
  "management_practices",
  "t_test",
  "chi_sq",
  "regression",
  "dummy_variable",
  "course_motivation",
  "course_goals",
  "after_course",
  "fun",
  "stoked")


sheet_url <- "https://docs.google.com/spreadsheets/d/1prbVVpSFqZCsOrwD1E7RKPEgphZrvy5efELt3Gg1ClI/edit#gid=0"

survey_results <- read_sheet(ss = sheet_url,
                             col_names = survey_cols,
                             # skipping one row because those are the headers
                             # we are providing our own headers
                             skip = 1)

# use the skim() function from skimr to get an idea of what the data look like.
skimr::skim(survey_results)

# use glimpse to preview rows
glimpse(survey_results)

# how many are employed?
count(survey_results, career_stage)

# familiarity with excel
count(survey_results, excel)

# familiarity with tidy data
count(survey_results, tidy_data)


# Review total stoke first. Because, duh.
# the %>% is called a pipe operator. cmnd + shift + m is a shortcut
# this lets us chain functions together
# we will go over this more together
count(survey_results, stoked) %>%
  # sort stoked column in descending order
  # most stoked on top
  arrange(desc(stoked))

count(survey_results, programming_experience) %>%
  ggplot(aes(x = n, y = programming_experience)) +
  # create a bar chart
  geom_col()

survey_results %>%
  mutate(programming_frequency = factor(
    programming_frequency,
    levels = c(
      "Never",
      "Less than once per year",
      "Several times per year",
      "Monthly",
      "Weekly",
      "Daily"
    )
  )) %>%
  count(programming_frequency) %>%
  ggplot(aes(n, programming_frequency)) +
  geom_col()



