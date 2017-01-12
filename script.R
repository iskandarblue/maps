library(ggmap)
library(rgdal)

citta<- cities$city
citta <- as.character(citta)

geocodes <- geocode(citta)


geotech$lon <- as.numeric(geotech$lon)
geotech$lat <- as.numeric(geotech$lat)

programs <- readOGR("master_points.geojson", "OGRGeoJSON")

geotech <- programs[programs@data$code == "GeoTech",]
euroculture <- programs[programs@data$code == "EUROCULTURE",]

bbox(euroculture)

for (i in 1:488){
  
  i <- 
}


iris_split <- split(iris, iris$Species)


#split SpatialPointsDataFrame by program code 

programs_split <- split(programs, programs@data$code)
str(programs_split)

#create empty list
result <- vector("list", 103)

#for each program create a bbox
for (i in 1:length(programs_split)) {
  result[[i]] <- bbox(programs_split[[i]])
}


dr <- t(as.data.frame(result))


result <- vector("list", 103)
names <- vector("list", 103)

for (i in 1:length(programs_split)) {
  result[[i]] <- bbox(programs_split[[i]])
}

  
for (i in 1:length(programs_split)) {
  names <- unique(programs_split[[i]]$code)
}

coords.x1.min <- data.frame(103)
  
for (i in 1:length(result)){
 
   foo$coords.x1.min <- result[[i]][1]
}


df <- data.frame(matrix(unlist(l), nrow=103, byrow=T),stringsAsFactors=FALSE)






  
