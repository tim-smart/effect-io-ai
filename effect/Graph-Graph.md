Package: `effect`<br />
Module: `Graph`<br />

## Graph.Graph

Immutable graph interface.

**When to use**

Use as the immutable graph model for code that queries, traverses,
transforms, or analyzes graph structure without mutating it.

**See**

- `MutableGraph` for the mutable counterpart used inside mutation scopes
- `DirectedGraph` for a `Graph` fixed to directed edges
- `UndirectedGraph` for a `Graph` fixed to undirected edges

**Signature**

```ts
export interface Graph<out N, out E, T extends Kind = "directed"> extends Proto<N, E> {
  readonly type: T
  readonly mutable: false
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L143)

Since v3.18.0