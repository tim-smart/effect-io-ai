Package: `effect`<br />
Module: `Graph`<br />

## Graph.astar

Finds the shortest path from the configured source node to the target node
using the A* pathfinding algorithm.

**Details**

The edge-cost function must return non-negative weights, and the heuristic
should be admissible to preserve shortest-path guarantees. Returns
`Option.none()` when the target is not reachable, and throws a `GraphError`
when either endpoint is missing or a negative edge cost is encountered.

**Example** (Finding shortest paths with A-star)

```ts
import { Graph } from "effect"

const graph = Graph.directed<{ x: number; y: number }, number>((mutable) => {
  const a = Graph.addNode(mutable, { x: 0, y: 0 })
  const b = Graph.addNode(mutable, { x: 1, y: 0 })
  const c = Graph.addNode(mutable, { x: 2, y: 0 })
  Graph.addEdge(mutable, a, b, 1)
  Graph.addEdge(mutable, b, c, 1)
})

// Manhattan distance heuristic
const heuristic = (
  nodeData: { x: number; y: number },
  targetData: { x: number; y: number }
) => Math.abs(nodeData.x - targetData.x) + Math.abs(nodeData.y - targetData.y)

const result = Graph.astar(graph, {
  source: 0,
  target: 2,
  cost: (edgeData) => edgeData,
  heuristic
})

if (result._tag === "Some") {
  console.log(result.value.path) // [0, 1, 2] - shortest path
  console.log(result.value.distance) // 2 - total distance
}
```

**Signature**

```ts
declare const astar: { <E, N>(config: AstarConfig<E, N>): <T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Option.Option<PathResult<E>>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config: AstarConfig<E, N>): Option.Option<PathResult<E>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3233)

Since v3.18.0