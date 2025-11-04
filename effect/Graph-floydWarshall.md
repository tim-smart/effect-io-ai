Package: `effect`<br />
Module: `Graph`<br />

## Graph.floydWarshall

Find shortest paths between all pairs of nodes using Floyd-Warshall algorithm.

Floyd-Warshall algorithm computes shortest paths between all pairs of nodes in O(V³) time.
It can handle negative edge weights and detect negative cycles.

**Example**

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
declare const floydWarshall: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, edgeWeight: (edgeData: E) => number) => AllPairsResult<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2283)

Since v3.18.0