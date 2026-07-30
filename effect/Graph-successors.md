Package: `effect`<br />
Module: `Graph`<br />

## Graph.successors

Returns the outgoing neighbor node indices for a node in a directed graph.

Throws a `GraphError` when used with an undirected graph.

**Signature**

```ts
declare const successors: <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">, nodeIndex: NodeIndex) => Array<NodeIndex>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1552)

Since v3.22.0