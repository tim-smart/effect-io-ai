Package: `effect`<br />
Module: `Graph`<br />

## Graph.hasEdge

Checks if an edge exists between two nodes in the graph.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const nodeC = Graph.addNode(mutable, "Node C")
  Graph.addEdge(mutable, nodeA, nodeB, 42)
})

const nodeA = 0
const nodeB = 1
const nodeC = 2

const hasAB = Graph.hasEdge(graph, nodeA, nodeB)
console.log(hasAB) // true

const hasAC = Graph.hasEdge(graph, nodeA, nodeC)
console.log(hasAC) // false
```

**Signature**

```ts
declare const hasEdge: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, source: NodeIndex, target: NodeIndex) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1408)

Since v3.18.0