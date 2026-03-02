Package: `effect`<br />
Module: `Graph`<br />

## Graph.DijkstraConfig

Configuration for Dijkstra's algorithm.

**Signature**

```ts
export interface DijkstraConfig<E> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L2697)

Since v4.0.0