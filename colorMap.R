
#3)	Create a color codedmap, based on the area of the state 

#for ggplot visualisation we need the ggplot2 package
#gor geom_map we need the ggmap package

library("ggplot2")
library("ggmap")
us=map_data("state")

#for ggplot add aesthetics
colorMap=ggplot(mergedData, aes(map_id = stateName))
colorMap=colorMap+ geom_map(map = us ,aes(fill= state.area))
colorMap=colorMap+expand_limits(x = us$long, y = us$lat) + coord_map()
colorMap=colorMap+ggtitle("US Color Map")
colorMap
