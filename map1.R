
mergedData = mergedData
library(ggmap)
#library(ggplot2)
us = map_data("state")
map1=ggplot(mergedData,aes(map_id=statenames))
map1=map1+geom_map(map=us,fill='white',color='black')
map1=map1+expand_limits(x=us$long,y=us$lat)
map1=map1+coord_map()+ggtitle('USA MAP')
map1
