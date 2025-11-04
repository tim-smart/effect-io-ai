Package: `effect`<br />
Module: `Graph`<br />

## Graph.filterEdges

Filters edges by removing those that don't match the predicate.
This function modifies the mutable graph in place.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")

  Graph.addEdge(mutable, a, b, 5)
  Graph.addEdge(mutable, b, c, 15)
  Graph.addEdge(mutable, c, a, 25)

  // Keep only edges with weight >= 10
  Graph.filterEdges(mutable, (data) => data >= 10)
})

console.log(Graph.edgeCount(graph)) // 2 (edge with weight 5 removed)
```

**Signature**

```ts
declare const filterEdges: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, predicate: (data: E) => boolean) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1078)

Since v3.18.0