Package: `effect`<br />
Module: `Graph`<br />

## Graph.BellmanFordConfig

Configuration for finding a shortest path with the Bellman-Ford algorithm.

**Details**

Specifies the source and target node indices, plus a cost function that maps
each edge's data to a numeric weight.

**Signature**

```ts
export interface BellmanFordConfig<E> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3418)

Since v3.18.0