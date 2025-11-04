Package: `effect`<br />
Module: `Graph`<br />

## Graph.isAcyclic

Checks if the graph is acyclic (contains no cycles).

Uses depth-first search to detect back edges, which indicate cycles.
For directed graphs, any back edge creates a cycle. For undirected graphs,
a back edge that doesn't go to the immediate parent creates a cycle.

**Example**

```ts
import { Graph } from "effect"

// Acyclic directed graph (DAG)
const dag = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "A->B")
  Graph.addEdge(mutable, b, c, "B->C")
})
console.log(Graph.isAcyclic(dag)) // true

// Cyclic directed graph
const cyclic = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, "A->B")
  Graph.addEdge(mutable, b, a, "B->A") // Creates cycle
})
console.log(Graph.isAcyclic(cyclic)) // false
```

**Signature**

```ts
declare const isAcyclic: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1889)

Since v3.18.0