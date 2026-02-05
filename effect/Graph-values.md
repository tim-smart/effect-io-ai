Package: `effect`<br />
Module: `Graph`<br />

## Graph.values

Returns an iterator over the values (data) in the walker.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, 1)
})

const dfs = Graph.dfs(graph, { start: [0] })
const values = Array.from(Graph.values(dfs))
console.log(values) // ["A", "B"]
```

**Signature**

```ts
declare const values: <T, N>(walker: Walker<T, N>) => Iterable<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3130)

Since v3.18.0