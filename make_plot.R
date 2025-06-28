library(tidyverse)

# Load the cleaned data
x <- read_rds("clean_data.rds")

# Create and assign the plot to D_plot
D_plot <- x |> 
  ggplot(aes(x = carat, y = price, color = cut)) + 
    geom_point() +
    scale_y_continuous(labels = scales::dollar) +
    labs(title = "Prices and Sizes for Diamonds of Color D",
         subtitle = "'Round' carat values like 1, 1.5 and 2 are more common.",
         x = "Carat",
         y = "Price")

# Save the plot to a PNG file
ggsave("size_v_weight.png", D_plot)

