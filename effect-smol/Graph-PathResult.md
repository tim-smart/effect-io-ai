Package: `effect`<br />
Module: `Graph`<br />

## Graph.PathResult

Result of a shortest path computation.

**When to use**

Use to read the successful source-to-target shortest path returned by
path-finding algorithms, including the ordered node indices, total distance,
and traversed edge data.

**Details**

Contains the node-index path, the total numeric distance, and the edge data
encountered along the path.

**Gotchas**

`costs` contains original edge data, not the numeric output of the cost
function unless the edge data is numeric.

**See**

- `dijkstra` for shortest paths with non-negative edge costs
- `astar` for heuristic shortest-path search
- `bellmanFord` for shortest paths that may include negative edge weights
- `AllPairsResult` for the all-pairs shortest-path result shape

**Signature**

```ts
export interface PathResult<E> {
  readonly path: Array<NodeIndex>
  readonly distance: number
  readonly costs: Array<E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3005)

Since v3.18.0