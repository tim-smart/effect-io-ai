Package: `effect`<br />
Module: `Graph`<br />

## Graph.filterMapNodes

Filters and optionally transforms nodes in a mutable graph using a predicate function.
Nodes that return Option.none are removed along with all their connected edges.

**Example**

```ts
import { Graph, Option } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "active")
  const b = Graph.addNode(mutable, "inactive")
  const c = Graph.addNode(mutable, "active")
  Graph.addEdge(mutable, a, b, 1)
  Graph.addEdge(mutable, b, c, 2)

  // Keep only "active" nodes and transform to uppercase
  Graph.filterMapNodes(mutable, (data) =>
    data === "active" ? Option.some(data.toUpperCase()) : Option.none()
  )
})

console.log(Graph.nodeCount(graph)) // 2 (only "active" nodes remain)
```

**Signature**

```ts
declare const filterMapNodes: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, f: (data: N) => Option.Option<N>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L924)

Since v3.18.0