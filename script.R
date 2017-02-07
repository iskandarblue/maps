library(ggmap)
library(rgdal)
pacman::p_load("rgdal","rgeos","maptools","gridExtra","geojsonio")





zips <- readOGR("cb_2015_us_zcta510_500k.shp")

country <- readOGR("new_country.geojson", "OGRGeoJSON")

#> us@proj4string
#CRS arguments:
# +proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0

#reproject states in same CRS as zips
states <- spTransform(states, CRS(proj4string(zips)))

plot(zips)
plot(states)

#subset by a state name
plot(states[states@data$name =='Minnesota', ])
MN <- states[states@data$name =='Minnesota', ]

zips_subset <- zips[MN,]

plot(zips_subset)
plot(MN, border="green", lwd = 3, add = TRUE)

zips.union <- unionSpatialPolygons(zips_subset, MN@data$name)

z <- over(zips_subset, states) 
zips_subset@data$name <- z$name


AZZips <- as.factor(85001:87000)
AZOnly <- subset(zips,zips@data$ZCTA5CE10 %in% AZZips)
AZOnly@data <- droplevels(AZOnly@data)
AZOnlyDF <- AZOnly@data
AZOnlyDF$ID <- row.names(AZOnly@data)




sp.na.omit <- function(x, margin=1) {
  if (!inherits(x, "SpatialPointsDataFrame") & !inherits(x, "SpatialPolygonsDataFrame")) 
    stop("MUST BE sp SpatialPointsDataFrame OR SpatialPolygonsDataFrame CLASS OBJECT") 
  na.index <- unique(as.data.frame(which(is.na(x@data),arr.ind=TRUE))[,margin])
  if(margin == 1) {  
    cat("DELETING ROWS: ", na.index, "\n") 
    return( x[-na.index,]  ) 
  }
  if(margin == 2) {  
    cat("DELETING COLUMNS: ", na.index, "\n") 
    return( x[,-na.index]  ) 
  }
}

AZOnly <- sp.na.omit(AZOnly)



aggregate(NumberToAggregate~SubCounty, sum, data=lu)

lu <- data.frame()
lu <- rbind(lu, AZOnly@data)

lu$SubCounty <- as.character(lu$SubCounty)


AZOnly@data$SubCounty <- as.character(AZOnly@data$SubCounty)
AZOnly@data <- full_join(AZOnly@data, lu, by = "SubCounty")

AZOnly@data <- select(AZOnly@data, lu, by = "SubCounty")


library(tmap)
qtm(AZOnly, "SubCounty")












library(maptools)
library(sp)
library(raster)
library(rgdal)
library(maps)

library(sp)
library(lattice) # required for trellis.par.set():
trellis.par.set(sp.theme()) # sets color ramp to bpy.colors()

AZOnly <- sp.na.omit(AZOnly)
trellis.par.set(sp.theme())
ss


citta<- cities$city
citta <- as.character(citta)

geocodes <- geocode(citta)




geotech$lon <- as.numeric(geotech$lon)
geotech$lat <- as.numeric(geotech$lat)

new <- readOGR("new.geojson", "OGRGeoJSON")

geotech <- programs[programs@data$code == "GeoTech",]
euroculture <- programs[programs@data$code == "EUROCULTURE",]

bbox(euroculture)

for (i in 1:488){
  
  i <- 
}


iris_split <- split(iris, iris$Species)


#split SpatialPointsDataFrame by program code 


country_split <- split(country, country@data$admin)


programs_split <- split(new, new@data$code)
str(programs_split)

#create empty list
result <- vector("list", 49)

#for each program create a bbox
for (i in 1:length(programs_split)) {
  result[[i]] <- bbox(programs_split[[i]])
}


dr <- t(as.data.frame(result))


result <- vector("list", 103)
names <- vector("list", 103)

for (i in 1:length(country_split)) {
  result[[i]] <- bbox(country_split[[i]])
}

  
for (i in 1:length(programs_split)) {
  names <- unique(programs_split[[i]]$code)
}

coords.x1.min <- data.frame(103)

foo <- data.frame(matrix(ncol = 4, nrow =23))
colnames(foo)[1] <- "xmin"
colnames(foo)[2] <- "ymin"
colnames(foo)[3] <- "xmax"
colnames(foo)[4] <- "ymax"

for (i in 1:length(result)){
 
   foo$V1[i] <- result[[i]][1]
   foo$V2[i] <- result[[i]][2]
   foo$V3[i] <- result[[i]][3]
   foo$V4[i] <- result[[i]][4]
}

#stretch extents

foo$X1 <- foo$X1 -1
foo$X2 <- foo$X2 - 1
foo$X3 <- foo$X3 + 1
foo$X4 <- foo$X4 + 1

merged <- merge(np, foo, by.x = "code", by.y = "code")


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

baz <- dplyr::left_join(baz, bar, by = c("course16" = "code"))
colnames(baz)[36] <- "website16"


updated   <- master[master$code != "CHOREOMUNDUS" & 
                   master$code != "CWCN" &
                   master$code != "DESEM" &
                   master$code != "EDAMUS" &
                   master$code != "EM-SANF" &
                   master$code != "EUROCULTURE" &
                   master$code != "EUROPHILOSOPHIE" &
                   master$code != "EWEM" &
                   master$code != "FAME" &
                   master$code != "GEMMA" &
                   master$code != "IT4BI" &
                   master$code != "JEMES" &
                   master$code != "MARIHE" &
                   master$code != "MEDfOR" &
                   master$code != "MITRA" &
                   master$code != "MSPME" &
                   master$code != "MUNDUS MAPP" &
                   master$code != "NOMADS EMMC" &
                   master$code != "PLANET Europe" &
                   master$code != "SAHC" &
                   master$code != "SUFONAMA" &
                    master$code != "WACOMA", ]








cities <- lapply(cities, function(x) {gsub("final generation", "D/C", x)})



cities <- as.data.frame(cities)



index <- new$code ==  "EMLex"
df$est[index] <- (df$a[index] - 5)/2.533 




















