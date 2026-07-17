Package: `effect`<br />
Module: `Graph`<br />

## Graph.TraversalDirection

Controls how traversal follows directed edges.

**Details**

`"outgoing"` follows edges from source to target, `"incoming"` follows them
from target to source, and `"undirected"` allows traversal in either
direction.

**Example** (Traversing by direction)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "A-B")
  Graph.addEdge(mutable, a, c, "A-C")
})

const outgoing = Array.from(
  Graph.indices(Graph.bfs(graph, { start: [0], direction: "outgoing" }))
) // [0, 1, 2]

const incoming = Array.from(
  Graph.indices(Graph.bfs(graph, { start: [1], direction: "incoming" }))
) // [1, 0]

const undirected = Array.from(
  Graph.indices(Graph.bfs(graph, { start: [1], direction: "undirected" }))
) // [1, 0, 2]
```

**Signature**

```ts
type TraversalDirection = Direction | "undirected"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3552)

Since v4.0.0