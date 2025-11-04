Package: `effect`<br />
Module: `Graph`<br />

## Graph.neighborsDirected

Get neighbors of a node in a specific direction for bidirectional traversal.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, "A->B")
})

const nodeA = 0
const nodeB = 1

// Get outgoing neighbors (nodes that nodeA points to)
const outgoing = Graph.neighborsDirected(graph, nodeA, "outgoing")

// Get incoming neighbors (nodes that point to nodeB)
const incoming = Graph.neighborsDirected(graph, nodeB, "incoming")
```

**Signature**

```ts
declare const neighborsDirected: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, nodeIndex: NodeIndex, direction: Direction) => Array<NodeIndex>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1543)

Since v3.18.0