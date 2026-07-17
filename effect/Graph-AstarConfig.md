Package: `effect`<br />
Module: `Graph`<br />

## Graph.AstarConfig

Configuration for finding a shortest path with the A* algorithm.

**When to use**

Use when configuring `astar` for point-to-point shortest-path searches where
node data can provide a heuristic estimate toward the target.

**Details**

Specifies the source and target node indices, an edge-cost function that maps
edge data to non-negative weights, and a heuristic that estimates the
remaining cost from a node to the target.

**See**

- `astar` for the algorithm that consumes this configuration
- `DijkstraConfig` for shortest paths without a heuristic
- `BellmanFordConfig` for shortest paths that may include negative edge weights

**Signature**

```ts
export interface AstarConfig<E, N> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
  heuristic: (sourceNodeData: N, targetNodeData: N) => number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L4547)

Since v3.18.0