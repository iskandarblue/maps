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
 
   foo$X1[i] <- result[[i]][1]
   foo$X2[i] <- result[[i]][2]
   foo$X3[i] <- result[[i]][3]
   foo$X4[i] <- result[[i]][4]
}


df <- data.frame(matrix(unlist(result), nrow=103, byrow=T),stringsAsFactors=FALSE)

colnames(foo)[1] <- "x1min"
colnames(foo)[2] <- "x1max"
colnames(foo)[3] <- ""
colnames(foo)[4] <- ""


master <- read.csv("master_points.csv")
master <- unique(master[c("code", "website")])

bcpw <- as.data.frame(fromJSON("by_cities.geojson", flatten=TRUE))

names(bcpw) <- gsub("features.properties.", "", names(bcpw), fixed = TRUE)

test <- merge(x = foo, y = bar, by.x = "course1", by.y = "code", sort = F)



colnames(test)[28] <- "website3"


for (i in 1:20){
  
  merge(x = bcpw, y = master, by.x = "course1", by.y = "code", all.x=TRUE)[, union(names(bcpw), names(master))]
  
}




library(data.table)


setnames(bcpw, old = c('website2'), new = c('website1'))

setnames(bcpw, old = c('website3', 'website4', 'website5', 'website6', 'website7', 
                       'website8','website9','website10','website11','website12','website13','website14',
                       'website15','website16','website17','website18', 'website19', 'website20'), 
                        new = c('website2', 'website3', 'website4', 'website5', 'website6', 'website7', 
                                'website8','website9','website10','website11','website12','website13','website14',
                                'website15','website16','website17','website18', 'website19'))


duplicated(bcpw) | duplicated(bcpw[nrow(bcpw):1, ])[nrow(bcpw):1]

which(duplicated(bcpw) | duplicated(bcpw[nrow(bcpw):1, ])[nrow(bcpw):1])

out <- bcpw[bcpw$city %in% c("Barcelona", "Brussels"), ]


bcpw$dups <- apply(bcpw[-1], 1, function(i) any(duplicated(i[!is.na(i)])))

baz <- dplyr::left_join(baz, bar, by = c("course6" = "code"))
colnames(baz)[26] <- "website6"






  
