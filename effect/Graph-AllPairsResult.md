Package: `effect`<br />
Module: `Graph`<br />

## Graph.AllPairsResult

Result of all-pairs shortest path computation.

**Signature**

```ts
export interface AllPairsResult<E> {
  readonly distances: Map<NodeIndex, Map<NodeIndex, number>>
  readonly paths: Map<NodeIndex, Map<NodeIndex, Array<NodeIndex> | null>>
  readonly edgeWeights: Map<NodeIndex, Map<NodeIndex, Array<E>>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2245)

Since v3.18.0