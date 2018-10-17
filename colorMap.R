
#3)	Create a color codedmap, based on the area of the state 

#for ggplot visualisation we need the ggplot2 package
#gor geom_map we need the ggmap package

library("ggplot2")
library("ggmap")
us=map_data("state")

#for ggplot add aesthetics
colorMap=ggplot(mergedData, aes(map_id = stateName))

#geom_map for map 
colorMap=colorMap+ geom_map(map = us ,aes(fill= state.area))

#add limits as coordinates for the map
colorMap=colorMap+expand_limits(x = us$long, y = us$lat) + coord_map()

#add title for the map
colorMap=colorMap+ggtitle("US Color Map")
colorMap

#4)	Repeat step B, but color code the map based on the murder rate of each state.

colorMap2= ggplot(mergedData, aes(map_id = stateName))
colorMap2=colorMap2+ geom_map(map = us,aes(fill=Murder))+ scale_fill_gradient(low = "green", high = "red")             
colorMap2=colorMap2+expand_limits(x = us$long, y = us$lat) + coord_map()
colorMap2
