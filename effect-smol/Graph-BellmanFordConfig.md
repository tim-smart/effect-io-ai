Package: `effect`<br />
Module: `Graph`<br />

## Graph.BellmanFordConfig

Configuration for finding a shortest path with the Bellman-Ford algorithm.

**When to use**

Use when configuring `bellmanFord` to find a shortest path where edge
weights may be negative.

**Details**

Specifies the source and target node indices, plus a cost function that maps
each edge's data to a numeric weight.

**See**

- `bellmanFord` for the algorithm that consumes this configuration
- `DijkstraConfig` for non-negative edge costs
- `AstarConfig` for heuristic shortest-path search

**Signature**

```ts
export interface BellmanFordConfig<E> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3772)

Since v3.18.0