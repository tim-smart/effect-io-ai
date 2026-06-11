Package: `effect`<br />
Module: `Graph`<br />

## Graph.DirectedGraph

Immutable graph type for source-to-target relationships.

**When to use**

Use as the immutable graph type when edge direction is part of the model and
traversal or neighbor queries should follow source-to-target edges.

**Details**

`DirectedGraph<N, E>` is a `Graph<N, E, "directed">` with node data of type
`N` and edge data of type `E`.

**See**

- `directed` for constructing directed graphs
- `Graph` for the generic immutable graph type
- `UndirectedGraph` for graphs whose edges connect both endpoints
- `MutableDirectedGraph` for the mutable directed graph type

**Signature**

```ts
type DirectedGraph<N, E> = Graph<N, E, "directed">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L195)

Since v3.18.0