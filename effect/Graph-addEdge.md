Package: `effect`<br />
Module: `Graph`<br />

## Graph.addEdge

Adds a new edge to a mutable graph and returns its index.

**Example**

```ts
import { Graph } from "effect"

const result = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const edge = Graph.addEdge(mutable, nodeA, nodeB, 42)
  console.log(edge) // EdgeIndex with value 0
})
```

**Signature**

```ts
declare const addEdge: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, source: NodeIndex, target: NodeIndex, data: E) => EdgeIndex
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1145)

Since v3.18.0