Package: `effect`<br />
Module: `Graph`<br />

## Graph.reverse

Swaps source and target nodes for every edge in a mutable graph.

**Example** (Reversing edge directions)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 1) // A -> B
  Graph.addEdge(mutable, b, c, 2) // B -> C
  Graph.reverse(mutable) // Now B -> A, C -> B
})

const edge0 = Graph.getEdge(graph, 0)
console.log(edge0) // Option.some(new Graph.Edge({ source: 1, target: 0, data: 1 }))
```

**Signature**

```ts
declare const reverse: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1116)

Since v3.18.0