library(igraph)
args = commandArgs(TRUE)
g = graph_from_data_frame(read.table(args[1], stringsAsFactors = FALSE), directed = TRUE)
g = decompose.graph(g)
df= do.call("rbind", lapply(1:length(g), function(i) {
data.frame(i, as_edgelist(g[[i]]), stringsAsFactors = FALSE)
}))
names(df) = c("id","from","to")
write.csv(df, file = paste0(gsub("\\.\\w+$","",args[1]),"/edge.csv"), quote=FALSE, row.names=FALSE)
