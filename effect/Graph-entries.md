Package: `effect`<br />
Module: `Graph`<br />

## Graph.entries

Returns an iterator over [index, data] entries in the walker.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, 1)
})

const dfs = Graph.dfs(graph, { startNodes: [0] })
const entries = Array.from(Graph.entries(dfs))
console.log(entries) // [[0, "A"], [1, "B"]]
```

**Signature**

```ts
declare const entries: <T, N>(walker: Walker<T, N>) => Iterable<[T, N]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2936)

Since v3.18.0