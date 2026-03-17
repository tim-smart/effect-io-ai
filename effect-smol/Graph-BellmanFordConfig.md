Package: `effect`<br />
Module: `Graph`<br />

## Graph.BellmanFordConfig

Configuration for Bellman-Ford algorithm.

**Signature**

```ts
export interface BellmanFordConfig<E> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3250)

Since v4.0.0