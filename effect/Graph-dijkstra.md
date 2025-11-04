Package: `effect`<br />
Module: `Graph`<br />

## Graph.dijkstra

Find the shortest path between two nodes using Dijkstra's algorithm.

Dijkstra's algorithm works with non-negative edge weights and finds the shortest
path from a source node to a target node in O((V + E) log V) time complexity.

**Example**

```ts
import { Graph, Option } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 5)
  Graph.addEdge(mutable, a, c, 10)
  Graph.addEdge(mutable, b, c, 2)
})

const result = Graph.dijkstra(graph, { source: 0, target: 2, cost: (edgeData) => edgeData })
if (Option.isSome(result)) {
  console.log(result.value.path) // [0, 1, 2] - shortest path A->B->C
  console.log(result.value.distance) // 7 - total distance
}
```

**Signature**

```ts
declare const dijkstra: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config: DijkstraConfig<E>) => Option.Option<PathResult<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2334)

Since v3.18.0