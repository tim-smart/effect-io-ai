Package: `effect`<br />
Module: `Graph`<br />

## Graph.mapEdges

Transforms all edge data in a mutable graph using the provided mapping function.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 10)
  Graph.addEdge(mutable, b, c, 20)
  Graph.mapEdges(mutable, (data) => data * 2)
})

const edgeData = Graph.getEdge(graph, 0)
console.log(edgeData) // Option.some({ source: 0, target: 1, data: 20 })
```

**Signature**

```ts
declare const mapEdges: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, f: (data: E) => E) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L832)

Since v3.18.0