Package: `effect`<br />
Module: `Graph`<br />

## Graph.complement

Returns the complement over the existing node set.

**Details**

Adds every missing edge between distinct nodes. The `createEdge` function
receives the source and target node data for each added edge. The result has
the same graph kind as `self`.

`G' = {V, (V x V) \ E}`

**Example** (Finding missing relationships)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, "A-B")
})

const result = Graph.complement(graph, (source, target) => `${source}-${target}`)

console.log(Graph.edgeCount(result)) // 1
```

**Signature**

```ts
declare const complement: { <N, E>(createEdge: (source: N, target: N) => E): <T extends Kind = "directed">(self: Graph<N, E, T>) => Graph<N, E, T>; <N, E, T extends Kind = "directed">(self: Graph<N, E, T>, createEdge: (source: N, target: N) => E): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1259)

Since v4.0.0