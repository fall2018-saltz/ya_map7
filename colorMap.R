
library("ggplot2")
library("ggmap")
us <- map_data("state")
options(scipen=999)
map1 <- ggplot(clean_data_merged, aes(map_id = stateName))
map1 <- map1 + geom_map(map = us ,aes(fill= state.area))
map1 <- map1 + expand_limits(x = us$long, y = us$lat) + coord_map()
map1
