Package: `effect`<br />
Module: `Graph`<br />

## Graph.DijkstraConfig

Configuration for finding a shortest path with Dijkstra's algorithm.

**When to use**

Use when configuring `dijkstra` to find a shortest path between two existing
node indices with non-negative edge costs.

**Details**

Specifies the source and target node indices, plus a cost function that maps
each edge's data to a non-negative numeric weight.

**Gotchas**

`dijkstra` throws a `GraphError` when either endpoint does not exist or when
the cost function returns a negative weight.

**See**

- `dijkstra` for the algorithm that consumes this configuration
- `AstarConfig` for heuristic shortest-path search
- `BellmanFordConfig` for shortest paths that may include negative edge weights

**Signature**

```ts
export interface DijkstraConfig<E> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3146)

Since v3.18.0