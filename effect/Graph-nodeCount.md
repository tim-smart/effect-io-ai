Package: `effect`<br />
Module: `Graph`<br />

## Graph.nodeCount

Returns the number of nodes in the graph.

**Example**

```ts
import { Graph } from "effect"

const emptyGraph = Graph.directed<string, number>()
console.log(Graph.nodeCount(emptyGraph)) // 0

const graphWithNodes = Graph.mutate(emptyGraph, (mutable) => {
  Graph.addNode(mutable, "Node A")
  Graph.addNode(mutable, "Node B")
  Graph.addNode(mutable, "Node C")
})

console.log(Graph.nodeCount(graphWithNodes)) // 3
```

**Signature**

```ts
declare const nodeCount: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L549)

Since v3.18.0