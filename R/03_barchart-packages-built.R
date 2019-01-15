## remember to restart R here!

library(readr)
library(here)
library(ggplot2)
library(dplyr)

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

package_version_freq_tbl <- read_csv(here::here("data/add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:

ggplot(package_version_freq_tbl, aes(x = Built, y = n)) +
  geom_col()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path
ggsave(here::here("figs/built-barchart.png"))


## YES overwrite the file that is there now
## that's old output from me (Jenny)
