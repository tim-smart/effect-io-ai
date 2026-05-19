Package: `effect`<br />
Module: `Graph`<br />

## Graph.AstarConfig

Configuration for finding a shortest path with the A* algorithm.

**Details**

Specifies the source and target node indices, an edge-cost function, and a
heuristic that estimates the remaining cost from a node to the target.

**Signature**

```ts
export interface AstarConfig<E, N> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
  heuristic: (sourceNodeData: N, targetNodeData: N) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3180)

Since v3.18.0