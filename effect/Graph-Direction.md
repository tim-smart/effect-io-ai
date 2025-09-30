Package: `effect`<br />
Module: `Graph`<br />

## Graph.Direction

Direction for graph traversal, indicating which edges to follow.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, "A->B")
})

// Follow outgoing edges (normal direction)
const outgoingNodes = Array.from(Graph.indices(Graph.dfs(graph, { startNodes: [0], direction: "outgoing" })))

// Follow incoming edges (reverse direction)
const incomingNodes = Array.from(Graph.indices(Graph.dfs(graph, { startNodes: [1], direction: "incoming" })))
```

**Signature**

```ts
type Direction = "outgoing" | "incoming"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1661)

Since v3.18.0