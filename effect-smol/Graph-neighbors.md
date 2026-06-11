Package: `effect`<br />
Module: `Graph`<br />

## Graph.neighbors

Returns the neighboring node indices for a node.

**Details**

For directed graphs, neighbors are the targets of outgoing edges. For
undirected graphs, neighbors are the other endpoints of incident edges.

**Example** (Getting outgoing neighbors)

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const nodeC = Graph.addNode(mutable, "Node C")
  Graph.addEdge(mutable, nodeA, nodeB, 1)
  Graph.addEdge(mutable, nodeA, nodeC, 2)
})

const nodeA = 0
const nodeB = 1
const nodeC = 2

const neighborsA = Graph.neighbors(graph, nodeA)
console.log(neighborsA) // [1, 2]

const neighborsB = Graph.neighbors(graph, nodeB)
console.log(neighborsB) // []
```

**Signature**

```ts
declare const neighbors: { (nodeIndex: NodeIndex): <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Array<NodeIndex>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, nodeIndex: NodeIndex): Array<NodeIndex>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1773)

Since v3.18.0