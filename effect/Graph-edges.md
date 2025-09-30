Package: `effect`<br />
Module: `Graph`<br />

## Graph.edges

Creates an iterator over all edge indices in the graph.

The iterator produces edge indices in the order they were added to the graph.
This provides access to all edges regardless of connectivity.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 1)
  Graph.addEdge(mutable, b, c, 2)
})

const indices = Array.from(Graph.indices(Graph.edges(graph)))
console.log(indices) // [0, 1]
```

**Signature**

```ts
declare const edges: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => EdgeWalker<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3437)

Since v3.18.0