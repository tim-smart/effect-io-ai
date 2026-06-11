Package: `effect`<br />
Module: `Graph`<br />

## Graph.Kind

Graph type for distinguishing directed and undirected graphs.

**When to use**

Use when writing graph-polymorphic types or helpers that need to preserve
whether a graph is directed or undirected.

**See**

- `Graph` for immutable graphs parameterized by kind
- `MutableGraph` for mutable graphs parameterized by kind

**Signature**

```ts
type Kind = "directed" | "undirected"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L109)

Since v3.18.0