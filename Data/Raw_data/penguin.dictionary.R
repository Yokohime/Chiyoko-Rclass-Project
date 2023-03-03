#creating a data dictionary...
install.packages("tidyverse")
require(tibble)
tibble(penguins_raw)
require(dplyr)
class(penguins_raw) #determine the class of thise data--tibble data frame, tibble, and data frame
skimr::skim(penguins_raw)

penguin.data <- as.data.frame(penguins_raw) #turning the tibble into a data frame
print(penguins_raw)
attributes(penguin.data)
penguin.data<- attributes(penguin.data)$dictionary #exporting dictionary
write.csv(penguin.data, "Users/taylo/Documents/Github/myrepo/project1/penguin.data.csv", row.names=TRUE)

var_desc <- c("species", "island", "bill length (mm)", "bill depth (mm)", "flipper length (mm)", "body mass (g)", "sex", "year")
var_type <- c(3, 3, 344, 344, 344, 344, 2, 3) )
