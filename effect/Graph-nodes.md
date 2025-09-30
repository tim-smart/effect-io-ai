Package: `effect`<br />
Module: `Graph`<br />

## Graph.nodes

Creates an iterator over all node indices in the graph.

The iterator produces node indices in the order they were added to the graph.
This provides access to all nodes regardless of connectivity.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 1)
})

const indices = Array.from(Graph.indices(Graph.nodes(graph)))
console.log(indices) // [0, 1, 2]
```

**Signature**

```ts
declare const nodes: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => NodeWalker<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3391)

Since v3.18.0