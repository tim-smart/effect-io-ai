Package: `effect`<br />
Module: `Graph`<br />

## Graph.removeEdge

Removes an edge from a mutable graph.

**Example**

```ts
import { Graph } from "effect"

const result = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const edge = Graph.addEdge(mutable, nodeA, nodeB, 42)

  // Remove the edge
  Graph.removeEdge(mutable, edge)
})
```

**Signature**

```ts
declare const removeEdge: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, edgeIndex: EdgeIndex) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1282)

Since v3.18.0