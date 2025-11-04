Package: `effect`<br />
Module: `Graph`<br />

## Graph.addNode

Adds a new node to a mutable graph and returns its index.

**Example**

```ts
import { Graph } from "effect"

const result = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  console.log(nodeA) // NodeIndex with value 0
  console.log(nodeB) // NodeIndex with value 1
})
```

**Signature**

```ts
declare const addNode: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, data: N) => NodeIndex
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L458)

Since v3.18.0