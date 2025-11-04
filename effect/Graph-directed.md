Package: `effect`<br />
Module: `Graph`<br />

## Graph.directed

Creates a directed graph, optionally with initial mutations.

**Example**

```ts
import { Graph } from "effect"

// Directed graph with initial nodes and edges
const graph = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "A->B")
  Graph.addEdge(mutable, b, c, "B->C")
})
```

**Signature**

```ts
declare const directed: <N, E>(mutate?: (mutable: MutableDirectedGraph<N, E>) => void) => DirectedGraph<N, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L259)

Since v3.18.0