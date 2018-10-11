
library(ggmap)
library(ggplot2)
map1=ggplot(mergedData,aes(map_id=Row.names))
map1=map1+geom_map(map=us,fill="white",color="black")
