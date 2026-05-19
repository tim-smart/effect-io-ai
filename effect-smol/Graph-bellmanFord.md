Package: `effect`<br />
Module: `Graph`<br />

## Graph.bellmanFord

Finds the shortest path from the configured source node to the target node
using the Bellman-Ford algorithm.

**Details**

Negative edge weights are allowed. Returns `Option.none()` when the target is
unreachable or when a negative cycle affects the path to the target. Throws a
`GraphError` when either endpoint is missing.

**Example** (Finding shortest paths with Bellman-Ford)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, -1) // Negative weight allowed
  Graph.addEdge(mutable, b, c, 3)
  Graph.addEdge(mutable, a, c, 5)
})

const result = Graph.bellmanFord(graph, {
  source: 0,
  target: 2,
  cost: (edgeData) => edgeData
})

if (result._tag === "Some") {
  console.log(result.value.path) // [0, 1, 2] - shortest path A->B->C
  console.log(result.value.distance) // 2 - total distance
}
```

**Signature**

```ts
declare const bellmanFord: { <E>(config: BellmanFordConfig<E>): <N, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Option.Option<PathResult<E>>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config: BellmanFordConfig<E>): Option.Option<PathResult<E>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3447)

Since v3.18.0