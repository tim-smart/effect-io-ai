Package: `effect`<br />
Module: `Graph`<br />

## Graph.DijkstraConfig

Configuration for finding a shortest path with Dijkstra's algorithm.

**Details**

Specifies the source and target node indices, plus a cost function that maps
each edge's data to a non-negative numeric weight.

**Signature**

```ts
export interface DijkstraConfig<E> {
  source: NodeIndex
  target: NodeIndex
  cost: (edgeData: E) => number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L2829)

Since v4.0.0