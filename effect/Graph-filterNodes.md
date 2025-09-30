Package: `effect`<br />
Module: `Graph`<br />

## Graph.filterNodes

Filters nodes by removing those that don't match the predicate.
This function modifies the mutable graph in place.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  Graph.addNode(mutable, "active")
  Graph.addNode(mutable, "inactive")
  Graph.addNode(mutable, "pending")
  Graph.addNode(mutable, "active")

  // Keep only "active" nodes
  Graph.filterNodes(mutable, (data) => data === "active")
})

console.log(Graph.nodeCount(graph)) // 2 (only "active" nodes remain)
```

**Signature**

```ts
declare const filterNodes: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, predicate: (data: N) => boolean) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1027)

Since v3.18.0