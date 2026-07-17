Package: `effect`<br />
Module: `Graph`<br />

## Graph.NeighborhoodConfig

Configuration for selecting a graph neighborhood.

**Details**

`radius` limits the edge distance from the center node and defaults to `1`.
`direction` controls how directed edges are traversed and defaults to
`"outgoing"`.

**Signature**

```ts
export interface NeighborhoodConfig {
  readonly radius?: number
  readonly direction?: TraversalDirection
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1313)

Since v4.0.0