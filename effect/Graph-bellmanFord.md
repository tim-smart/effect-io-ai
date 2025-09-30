Package: `effect`<br />
Module: `Graph`<br />

## Graph.bellmanFord

Find the shortest path between two nodes using Bellman-Ford algorithm.

Bellman-Ford algorithm can handle negative edge weights and detects negative cycles.
It has O(VE) time complexity, slower than Dijkstra's but more versatile.
Returns Option.none() if a negative cycle is detected that affects the path.

**Example**

```ts
import { Graph, Option } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, -1)  // Negative weight allowed
  Graph.addEdge(mutable, b, c, 3)
  Graph.addEdge(mutable, a, c, 5)
})

const result = Graph.bellmanFord(graph, 0, 2, (edgeData) => edgeData)
if (Option.isSome(result)) {
  console.log(result.value.path) // [0, 1, 2] - shortest path A->B->C
  console.log(result.value.distance) // 2 - total distance
}
```

**Signature**

```ts
declare const bellmanFord: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, source: NodeIndex, target: NodeIndex, edgeWeight: (edgeData: E) => number) => Option.Option<PathResult<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2605)

Since v3.18.0