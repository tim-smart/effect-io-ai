Package: `effect`<br />
Module: `Graph`<br />

## ~~Graph.neighborsDirected~~

Gets directed neighbors of a node in a specific direction.

**When to use**

Use when maintaining existing code that already passes an explicit traversal
direction. New code should prefer `successors` or `predecessors`.

**Gotchas**

Throws a `GraphError` when used with an undirected graph.

**Example** (Traversing directed neighbors)

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

**See**

- `successors` for outgoing neighbors in a directed graph
- `predecessors` for incoming neighbors in a directed graph

**Signature**

```ts
declare const neighborsDirected: { (nodeIndex: NodeIndex, direction: Direction): <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">) => Array<NodeIndex>; <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">, nodeIndex: NodeIndex, direction: Direction): Array<NodeIndex>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1946)

Since v3.18.0