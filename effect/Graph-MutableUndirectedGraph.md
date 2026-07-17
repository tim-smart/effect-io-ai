Package: `effect`<br />
Module: `Graph`<br />

## Graph.MutableUndirectedGraph

Mutable undirected graph type alias.

**When to use**

Use when annotating a temporary graph value that can be changed in place and
whose edges connect both endpoints without direction.

**See**

- `MutableDirectedGraph` for mutable graphs with directed edges
- `UndirectedGraph` for the immutable undirected graph type
- `MutableGraph` for the generic mutable graph type

**Signature**

```ts
type MutableUndirectedGraph<N, E> = MutableGraph<N, E, "undirected">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L316)

Since v3.18.0