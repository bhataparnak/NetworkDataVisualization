install.packages("igraph")
library(igraph)

#Reading First 100 records from a huge data-set
df<-read.table("Amazon.txt",sep = "", header = FALSE,nrows=100)

edges <- df$V1
vertices <- df$V2

# create data:
links <- data.frame(
  source=c(edges),
  target=c(vertices)
)

# create the network object
network <- graph_from_data_frame(d=links, directed=F) 

# plot it
plot(network)
title(main = "Amazon product co-purchasing network from June 01 2003", font.main = 3, col.main = "darkgreen") 

