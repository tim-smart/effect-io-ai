Package: `effect`<br />
Module: `Graph`<br />

## Graph.AllPairsResult

Result of an all-pairs shortest path computation.

**Details**

Contains distance, node-path, and edge-data maps keyed by source and target
node indices.

**Signature**

```ts
export interface AllPairsResult<E> {
  readonly distances: Map<NodeIndex, Map<NodeIndex, number>>
  readonly paths: Map<NodeIndex, Map<NodeIndex, Array<NodeIndex> | null>>
  readonly costs: Map<NodeIndex, Map<NodeIndex, Array<E>>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3019)

Since v4.0.0