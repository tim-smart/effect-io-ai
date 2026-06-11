Package: `effect`<br />
Module: `Graph`<br />

## Graph.MutableDirectedGraph

Mutable directed graph type alias.

**When to use**

Use when annotating a temporary graph value that can be changed in place and
whose edges have source-to-target direction.

**See**

- `MutableGraph` for the generic mutable graph type
- `DirectedGraph` for the immutable directed graph type
- `MutableUndirectedGraph` for mutable graphs without edge direction

**Signature**

```ts
type MutableDirectedGraph<N, E> = MutableGraph<N, E, "directed">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L233)

Since v3.18.0