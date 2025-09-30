Package: `effect`<br />
Module: `Graph`<br />

## Graph.indices

Returns an iterator over the indices in the walker.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, 1)
})

const dfs = Graph.dfs(graph, { startNodes: [0] })
const indices = Array.from(Graph.indices(dfs))
console.log(indices) // [0, 1]
```

**Signature**

```ts
declare const indices: <T, N>(walker: Walker<T, N>) => Iterable<T>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2885)

Since v3.18.0