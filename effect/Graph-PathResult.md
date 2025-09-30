Package: `effect`<br />
Module: `Graph`<br />

## Graph.PathResult

Result of a shortest path computation containing the path and total distance.

**Signature**

```ts
export interface PathResult<E> {
  readonly path: Array<NodeIndex>
  readonly distance: number
  readonly edgeWeights: Array<E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2076)

Since v3.18.0