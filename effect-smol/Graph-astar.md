Package: `effect`<br />
Module: `Graph`<br />

## Graph.astar

Find the shortest path between two nodes using A* pathfinding algorithm.

A* is an extension of Dijkstra's algorithm that uses a heuristic function to guide
the search towards the target, potentially finding paths faster than Dijkstra's.
The heuristic must be admissible (never overestimate the actual cost).

**Example**

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

if (result !== undefined) {
  console.log(result.path) // [0, 1, 2] - shortest path
  console.log(result.distance) // 2 - total distance
}
```

**Signature**

```ts
declare const astar: { <E, N>(config: AstarConfig<E, N>): <T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => PathResult<E> | undefined; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config: AstarConfig<E, N>): PathResult<E> | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3085)

Since v4.0.0