Package: `effect`<br />
Module: `Graph`<br />

## Graph.removeNode

Removes a node and all its incident edges from a mutable graph.

**Example**

```ts
import { Graph } from "effect"

const result = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  Graph.addEdge(mutable, nodeA, nodeB, 42)

  // Remove nodeA and all edges connected to it
  Graph.removeNode(mutable, nodeA)
})
```

**Signature**

```ts
declare const removeNode: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, nodeIndex: NodeIndex) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1219)

Since v3.18.0