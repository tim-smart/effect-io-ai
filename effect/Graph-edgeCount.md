Package: `effect`<br />
Module: `Graph`<br />

## Graph.edgeCount

Returns the number of edges in the graph.

**Example**

```ts
import { Graph } from "effect"

const emptyGraph = Graph.directed<string, number>()
console.log(Graph.edgeCount(emptyGraph)) // 0

const graphWithEdges = Graph.mutate(emptyGraph, (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const nodeC = Graph.addNode(mutable, "Node C")
  Graph.addEdge(mutable, nodeA, nodeB, 1)
  Graph.addEdge(mutable, nodeB, nodeC, 2)
  Graph.addEdge(mutable, nodeC, nodeA, 3)
})

console.log(Graph.edgeCount(graphWithEdges)) // 3
```

**Signature**

```ts
declare const edgeCount: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1454)

Since v3.18.0