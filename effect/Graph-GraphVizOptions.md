Package: `effect`<br />
Module: `Graph`<br />

## Graph.GraphVizOptions

Configuration options for GraphViz DOT format generation from graphs.

**Signature**

```ts
export interface GraphVizOptions<N, E> {
  readonly nodeLabel?: (data: N) => string
  readonly edgeLabel?: (data: E) => string
  readonly graphName?: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1582)

Since v3.18.0