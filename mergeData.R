
#take the USArrests data set into arrests variable 
arrests=USArrests
#arrests doesn't contain a proper column name for state names but has state names as index
#so create a column to store the state names suing rownames
stateName=as.vector(rownames(USArrests))
stateName=tolower(stateName)
cbind(arrests,stateName,stringsAsFactors=FALSE)
#now that we have to merge two dataframes using a common element 
#the column element is stateName
mergedData=merge(cleandata,arrests,by="stateName")
mergedData


