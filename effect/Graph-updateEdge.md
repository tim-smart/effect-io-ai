Package: `effect`<br />
Module: `Graph`<br />

## Graph.updateEdge

Updates a single edge's data by applying a transformation function.

**Example**

```ts
import { Graph } from "effect"

const result = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const edgeIndex = Graph.addEdge(mutable, nodeA, nodeB, 10)
  Graph.updateEdge(mutable, edgeIndex, (data) => data * 2)
})

const edgeData = Graph.getEdge(result, 0)
console.log(edgeData) // Option.some({ source: 0, target: 1, data: 20 })
```

**Signature**

```ts
declare const updateEdge: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, edgeIndex: EdgeIndex, f: (data: E) => E) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L760)

Since v3.18.0