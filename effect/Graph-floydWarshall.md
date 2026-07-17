Package: `effect`<br />
Module: `Graph`<br />

## Graph.floydWarshall

Finds shortest paths between all pairs of nodes using the Floyd-Warshall
algorithm.

**Details**

Computes distances, reconstructed node paths, and edge-data paths for every
source and target pair in O(V^3) time. Negative edge weights are allowed, and
`Infinity` behaves like an impassable edge. A `GraphError` is thrown if any
edge weight is `NaN` or `-Infinity`, or if any negative cycle is detected.

**Example** (Finding all-pairs shortest paths)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 3)
  Graph.addEdge(mutable, b, c, 2)
  Graph.addEdge(mutable, a, c, 7)
})

const result = Graph.floydWarshall(graph, (edgeData) => edgeData)
const distanceAToC = result.distances.get(0)?.get(2) // 5 (A->B->C)
const pathAToC = result.paths.get(0)?.get(2) // [0, 1, 2]
```

**Signature**

```ts
declare const floydWarshall: { <E>(cost: (edgeData: E) => number): <N, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => AllPairsResult<E>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, cost: (edgeData: E) => number): AllPairsResult<E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L4393)

Since v3.18.0