Package: `effect`<br />
Module: `Graph`<br />

## Graph.AllPairsResult

Result of an all-pairs shortest path computation.

**When to use**

Use when storing or passing around the complete output of `floydWarshall` so
callers can look up shortest distances, node paths, and edge data for any
source and target node pair.

**Details**

Contains distance, node-path, and edge-data maps keyed by source and target
node indices.

**See**

- `floydWarshall` for computing an all-pairs shortest path result
- `PathResult` for the single source-to-target result shape used by path-finding algorithms

**Signature**

```ts
export interface AllPairsResult<E> {
  readonly distances: Map<NodeIndex, Map<NodeIndex, number>>
  readonly paths: Map<NodeIndex, Map<NodeIndex, Array<NodeIndex> | null>>
  readonly costs: Map<NodeIndex, Map<NodeIndex, Array<E>>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3235)

Since v3.18.0