# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Experiment 5: Social Network Analysis with R (igraph)
# Course: R Programming Lab
# ==============================================================================

# LAB: SOCIAL NETWORK ANALYSIS WITH R


#Install & load required package
if (!("igraph" %in% rownames(installed.packages()))) {
  install.packages("igraph")
}
library(igraph)


#Create a small toy network (undirected)
g <- graph(c(1, 2, 2, 3, 3, 4, 4, 1),
           directed = F,
           n = 7)

plot(g, main = "Toy Undirected Network")


#Create a small directed network with named nodes
g1 <- graph(c("Amy", "Ram", "Ram", "Li", "Li", "Amy",
              "Amy", "Li", "Kate", "Li"),
            directed = T)

plot(g1, main = "Amy-Ram-Li-Kate Directed Network")


#Network measures (on the named directed network g1)
cat("\n--- Degree (all/in/out) ---\n")
print(degree(g1, mode = 'all'))   # total connections per node
print(degree(g1, mode = 'in'))    # incoming connections
print(degree(g1, mode = 'out'))   # outgoing connections

cat("\nDiameter:", diameter(g1, directed = F, weights = NA), "\n")

cat("Edge density (built-in):", edge_density(g1, loops = F), "\n")
cat("Edge density (manual check):",
    ecount(g1) / (vcount(g1) * (vcount(g1) - 1)), "\n")

cat("Reciprocity:", reciprocity(g1), "\n")

cat("\n--- Closeness centrality ---\n")
print(closeness(g1, mode = 'all', weights = NA))

cat("\n--- Betweenness centrality (nodes) ---\n")
print(betweenness(g1, directed = T, weights = NA))

cat("\n--- Edge betweenness ---\n")
print(edge_betweenness(g1, directed = T, weights = NA))


#Read the real dataset used in the tutorial
data <- read.csv(
  'https://raw.githubusercontent.com/bkrai/R-files-from-YouTube/main/networkdata.csv',
  header = T
)
y <- data.frame(data$first, data$second)


#Create the network from the dataset
net <- graph.data.frame(y, directed = T)
V(net)$label  <- V(net)$name
V(net)$degree <- degree(net)


#Histogram of node degree
hist(V(net)$degree,
     main = "Histogram of Node Degree",
     xlab = "Degree", col = "lightblue")


#Basic network diagram
plot(net, main = "Network Diagram (networkdata.csv)")


#Highlighting degrees & using a layout
plot(net,
     vertex.color = rainbow(52),
     vertex.size = V(net)$degree * 0.4,
     edge.arrow.size = 0.1,
     layout = layout.fruchterman.reingold,
     main = "Network Sized by Degree (Fruchterman-Reingold layout)")

#Hub and Authority scores (HITS algorithm)
hs <- hub_score(net)$vector         # hubs: point to many authorities
as <- authority.score(net)$vector   # authorities: pointed to by many hubs

par(mfrow = c(1, 2))
set.seed(123)
plot(net,
     vertex.size = hs * 30,
     main = 'Hubs',
     vertex.color = rainbow(52),
     edge.arrow.size = 0.1,
     layout = layout.kamada.kawai)

plot(net,
     vertex.size = as * 30,
     main = 'Authorities',
     vertex.color = rainbow(52),
     edge.arrow.size = 0.1,
     layout = layout.kamada.kawai)
par(mfrow = c(1, 1))

cat("\nTop 5 Hubs:\n")
print(head(sort(hs, decreasing = TRUE), 5))

cat("\nTop 5 Authorities:\n")
print(head(sort(as, decreasing = TRUE), 5))

#Community detection
net_undirected <- graph.data.frame(y, directed = F)
cnet <- cluster_edge_betweenness(net_undirected)

plot(cnet, net_undirected, main = "Community Structure (Edge-Betweenness)")

cat("\nNumber of communities detected:", length(cnet), "\n")
cat("Modularity score:", modularity(cnet), "\n")


#Interpretation (printed summary for the lab report)
top_degree_node <- V(net)$name[which.max(V(net)$degree)]
top_hub_node    <- names(sort(hs, decreasing = TRUE))[1]
top_auth_node   <- names(sort(as, decreasing = TRUE))[1]

cat("\n================= INTERPRETATION =================\n")
cat("1. The imported network (networkdata.csv) has", vcount(net),
    "nodes and", ecount(net), "edges.\n")
cat("2. Node '", top_degree_node, "' has the highest overall degree,\n", sep = "")
cat("   i.e. it is the most directly connected individual/entity.\n")
cat("3. Node '", top_hub_node, "' scores highest as a HUB, meaning it\n", sep = "")
cat("   points to many well-connected (authoritative) nodes.\n")
cat("4. Node '", top_auth_node, "' scores highest as an AUTHORITY, meaning\n", sep = "")
cat("   many hub nodes point to it, indicating it is a trusted/important entity.\n")
cat("5. Community detection (edge-betweenness) found", length(cnet),
    "communities\n")
cat("   with a modularity of", round(modularity(cnet), 3),
    ", indicating how clearly the network\n")
cat("   splits into distinct, tightly-knit sub-groups.\n")
cat("====================================================\n")