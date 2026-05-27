Package: `effect`<br />
Module: `Graph`<br />

## Graph.dijkstra

Finds the shortest path from the configured source node to the target node
using Dijkstra's algorithm.

**Details**

Edge costs must be non-negative. Returns `Option.none()` when the target is
not reachable, and throws a `GraphError` when either endpoint is missing or a
negative edge cost is encountered.

**Example** (Finding shortest paths with Dijkstra)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 5)
  Graph.addEdge(mutable, a, c, 10)
  Graph.addEdge(mutable, b, c, 2)
})

const result = Graph.dijkstra(graph, {
  source: 0,
  target: 2,
  cost: (edgeData) => edgeData
})

if (result._tag === "Some") {
  console.log(result.value.path) // [0, 1, 2] - shortest path A->B->C
  console.log(result.value.distance) // 7 - total distance
}
```

**Signature**

```ts
declare const dijkstra: { <E>(config: DijkstraConfig<E>): <N, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Option.Option<PathResult<E>>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config: DijkstraConfig<E>): Option.Option<PathResult<E>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3081)

Since v3.18.0