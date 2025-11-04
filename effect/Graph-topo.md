Package: `effect`<br />
Module: `Graph`<br />

## Graph.topo

Creates a new topological sort iterator with optional configuration.

The iterator uses Kahn's algorithm to lazily produce nodes in topological order.
Throws an error if the graph contains cycles.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 1)
  Graph.addEdge(mutable, b, c, 1)
})

// Standard topological sort
const topo1 = Graph.topo(graph)
for (const nodeIndex of Graph.indices(topo1)) {
  console.log(nodeIndex) // 0, 1, 2 (topological order)
}

// With initial nodes
const topo2 = Graph.topo(graph, { initials: [0] })

// Throws error for cyclic graph
const cyclicGraph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, 1)
  Graph.addEdge(mutable, b, a, 2) // Creates cycle
})

try {
  Graph.topo(cyclicGraph) // Throws: "Cannot perform topological sort on cyclic graph"
} catch (error) {
  console.log((error as Error).message)
}
```

**Signature**

```ts
declare const topo: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config?: TopoConfig) => NodeWalker<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3182)

Since v3.18.0