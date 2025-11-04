Package: `effect`<br />
Module: `Graph`<br />

## Graph.undirected

Creates an undirected graph, optionally with initial mutations.

**Example**

```ts
import { Graph } from "effect"

// Undirected graph with initial nodes and edges
const graph = Graph.undirected<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "A-B")
  Graph.addEdge(mutable, b, c, "B-C")
})
```

**Signature**

```ts
declare const undirected: <N, E>(mutate?: (mutable: MutableUndirectedGraph<N, E>) => void) => UndirectedGraph<N, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L300)

Since v3.18.0