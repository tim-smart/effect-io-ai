Package: `effect`<br />
Module: `Graph`<br />

## Graph.UndirectedGraph

Immutable graph type for relationships without source-to-target direction.

**When to use**

Use when modeling relationships where each edge connects both endpoints
without a source-to-target direction.

**Details**

`UndirectedGraph<N, E>` is a `Graph<N, E, "undirected">`.

**See**

- `undirected` for constructing undirected graphs
- `DirectedGraph` for graphs whose edges have source-to-target direction
- `MutableUndirectedGraph` for the mutable undirected graph type

**Signature**

```ts
type UndirectedGraph<N, E> = Graph<N, E, "undirected">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L216)

Since v3.18.0