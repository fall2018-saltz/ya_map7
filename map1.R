
mergedData = mergedData
library(ggmap)
library(ggplot2)
map1=ggplot(mergedData,aes(map_id=Row.names))
map1=map1+geom_map(map_id='us',fill='white',color='black')
map1=map1+expands_limits(x=us$long,y=us$lat)
map1=map1+coord_map+ggtitle('USA MAP')
map1

head(mergedData)
