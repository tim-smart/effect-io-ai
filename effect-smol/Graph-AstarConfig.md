Package: `effect`<br />
Module: `Graph`<br />

## Graph.AstarConfig

Configuration for A* pathfinding algorithm.

**Signature**

```ts
export interface AstarConfig<E, N> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
  heuristic: (sourceNodeData: N, targetNodeData: N) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3038)

Since v4.0.0