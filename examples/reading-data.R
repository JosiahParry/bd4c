library(tidyverse)

# read in foursquare data as is
foursquare_messy_names <- read_csv("data/foursquare_poi.csv")

# manually specify the column names
foursquare_manual_clean_names <- read_csv("data/foursquare_poi.csv",
                       col_names = c("gis_id",
                                     "venue_id",
                                     "name",
                                     "categories_id",
                                     "categories_name",
                                     "categories_plural_name",
                                     "categories_short_name",
                                     "canonical_url",
                                     "verified",
                                     "rating",
                                     "description",
                                     "x",
                                     "y",
                                     "blk_id_10",
                                     "ct_id_10"))


# clean column names while reading with janitor
foursquare_janitor <- janitor::clean_names(read_csv("data/foursquare_poi.csv"))

# preview tibble
glimpse(foursquare_janitor)

# skim the dataset for data previews
skimr::skim(foursquare_janitor)

# specify the column types while reading
read_csv("data/foursquare_poi.csv",
         col_types = "cccccccclccddcc")

# read in foursquare then clean names and save to another object
foursquare_raw <- read_csv("data/foursquare_poi.csv",
                       col_types = "cccccccclccddcc")

foursquare_clean <- janitor::clean_names(foursquare_raw)
