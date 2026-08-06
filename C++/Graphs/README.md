# Graphs

A weighted, undirected graph data structure where each node holds a vector of features and each edge holds a weight. Built on top of a custom max heap, the included graph analyzer can answer queries about the graph's structure:

- `diameter()` - the longest shortest path between any two nodes
- `openClosedTriangleRatio()` - ratio of open to closed triangles
- `topKOpenTriangles(k)` - the top K open triangles
- `topKNeighbor(nodeID, k, w)` / `topNonNeighbor(nodeID, w)` - nearest neighbors ranked by the dot product of a query vector with node feature vectors
- `jacardIndexOfTopKNeighborhoods(a, b, k, w)` - similarity between two nodes' top-K neighborhoods

## Run

`./GraphTester` (recompile with `make` if needed)
