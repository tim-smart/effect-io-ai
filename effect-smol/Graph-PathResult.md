Package: `effect`<br />
Module: `Graph`<br />

## Graph.PathResult

Result of a shortest path computation.

**Details**

Contains the node-index path, the total numeric distance, and the edge data
encountered along the path.

**Signature**

```ts
export interface PathResult<E> {
  readonly path: Array<NodeIndex>
  readonly distance: number
  readonly costs: Array<E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L2821)

Since v3.18.0