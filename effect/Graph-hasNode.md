Package: `effect`<br />
Module: `Graph`<br />

## Graph.hasNode

Checks if a node with the given index exists in the graph.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  Graph.addNode(mutable, "Node A")
})

const nodeIndex = 0
const exists = Graph.hasNode(graph, nodeIndex)
console.log(exists) // true

const nonExistentIndex = 999
const notExists = Graph.hasNode(graph, nonExistentIndex)
console.log(notExists) // false
```

**Signature**

```ts
declare const hasNode: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, nodeIndex: NodeIndex) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L522)

Since v3.18.0