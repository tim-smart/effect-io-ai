Package: `effect`<br />
Module: `Graph`<br />

## Graph.ExternalsConfig

Configuration for selecting external nodes.

**When to use**

Use to configure how `externals` identifies graph boundary nodes when you
need sinks with no outgoing edges or sources with no incoming edges.

**Details**

`direction` chooses which missing edge direction makes a node external:
`"outgoing"` selects nodes with no outgoing edges, and `"incoming"` selects
nodes with no incoming edges. If omitted, `direction` defaults to
`"outgoing"`.

**See**

- `externals` for the iterator that consumes this configuration

**Signature**

```ts
export interface ExternalsConfig {
  readonly direction?: Direction
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L4806)

Since v3.18.0