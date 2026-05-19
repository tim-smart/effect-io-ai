Package: `effect`<br />
Module: `Graph`<br />

## Graph.ExternalsConfig

Configuration for selecting external nodes.

**Details**

`direction` chooses which missing edge direction makes a node external:
`"outgoing"` selects nodes with no outgoing edges, and `"incoming"` selects
nodes with no incoming edges.

**Signature**

```ts
export interface ExternalsConfig {
  readonly direction?: Direction
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L4363)

Since v3.18.0