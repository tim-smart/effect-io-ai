Package: `effect`<br />
Module: `Graph`<br />

## Graph.filterMapEdges

Filters and optionally transforms edges in a mutable graph using a predicate function.
Edges that return Option.none are removed from the graph.

**Example**

```ts
import { Graph, Option } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 5)
  Graph.addEdge(mutable, b, c, 15)
  Graph.addEdge(mutable, c, a, 25)

  // Keep only edges with weight >= 10 and double their weight
  Graph.filterMapEdges(mutable, (data) =>
    data >= 10 ? Option.some(data * 2) : Option.none()
  )
})

console.log(Graph.edgeCount(graph)) // 2 (edges with weight 5 removed)
```

**Signature**

```ts
declare const filterMapEdges: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, f: (data: E) => Option.Option<E>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L976)

Since v3.18.0