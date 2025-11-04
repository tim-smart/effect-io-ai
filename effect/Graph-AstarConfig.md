Package: `effect`<br />
Module: `Graph`<br />

## Graph.AstarConfig

Configuration for A* algorithm.

**Signature**

```ts
export interface AstarConfig<E, N> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
  heuristic: (sourceNodeData: N, targetNodeData: N) => number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2286)

Since v3.18.0