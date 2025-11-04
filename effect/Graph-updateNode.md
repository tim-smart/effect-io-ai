Package: `effect`<br />
Module: `Graph`<br />

## Graph.updateNode

Updates a single node's data by applying a transformation function.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  Graph.addNode(mutable, "Node A")
  Graph.addNode(mutable, "Node B")
  Graph.updateNode(mutable, 0, (data) => data.toUpperCase())
})

const nodeData = Graph.getNode(graph, 0)
console.log(nodeData) // Option.some("NODE A")
```

**Signature**

```ts
declare const updateNode: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, index: NodeIndex, f: (data: N) => N) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L725)

Since v3.18.0