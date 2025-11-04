Package: `effect`<br />
Module: `Graph`<br />

## Graph.mapNodes

Creates a new graph with transformed node data using the provided mapping function.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  Graph.addNode(mutable, "node a")
  Graph.addNode(mutable, "node b")
  Graph.addNode(mutable, "node c")
  Graph.mapNodes(mutable, (data) => data.toUpperCase())
})

const nodeData = Graph.getNode(graph, 0)
console.log(nodeData) // Option.some("NODE A")
```

**Signature**

```ts
declare const mapNodes: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, f: (data: N) => N) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L798)

Since v3.18.0