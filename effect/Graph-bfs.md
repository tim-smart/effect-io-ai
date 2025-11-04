Package: `effect`<br />
Module: `Graph`<br />

## Graph.bfs

Creates a new BFS iterator with optional configuration.

The iterator maintains a queue of nodes to visit and tracks discovered nodes.
It provides lazy evaluation of the breadth-first search.

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

// Start from a specific node
const bfs1 = Graph.bfs(graph, { start: [0] })
for (const nodeIndex of Graph.indices(bfs1)) {
  console.log(nodeIndex) // Traverses in BFS order: 0, 1, 2
}

// Empty iterator (no starting nodes)
const bfs2 = Graph.bfs(graph)
// Can be used programmatically
```

**Signature**

```ts
declare const bfs: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config?: SearchConfig) => NodeWalker<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3281)

Since v3.18.0