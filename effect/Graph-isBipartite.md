Package: `effect`<br />
Module: `Graph`<br />

## Graph.isBipartite

Checks if an undirected graph is bipartite.

A bipartite graph is one whose vertices can be divided into two disjoint sets
such that no two vertices within the same set are adjacent. Uses BFS coloring
to determine bipartiteness.

**Example**

```ts
import { Graph } from "effect"

// Bipartite graph (alternating coloring possible)
const bipartite = Graph.undirected<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  const d = Graph.addNode(mutable, "D")
  Graph.addEdge(mutable, a, b, "edge") // Set 1: {A, C}, Set 2: {B, D}
  Graph.addEdge(mutable, b, c, "edge")
  Graph.addEdge(mutable, c, d, "edge")
})
console.log(Graph.isBipartite(bipartite)) // true

// Non-bipartite graph (odd cycle)
const triangle = Graph.undirected<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "edge")
  Graph.addEdge(mutable, b, c, "edge")
  Graph.addEdge(mutable, c, a, "edge") // Triangle (3-cycle)
})
console.log(Graph.isBipartite(triangle)) // false
```

**Signature**

```ts
declare const isBipartite: <N, E>(graph: Graph<N, E, "undirected"> | MutableGraph<N, E, "undirected">) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2003)

Since v3.18.0