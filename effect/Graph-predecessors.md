Package: `effect`<br />
Module: `Graph`<br />

## Graph.predecessors

Returns the incoming neighbor node indices for a node in a directed graph.

Throws a `GraphError` when used with an undirected graph.

**Signature**

```ts
declare const predecessors: <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">, nodeIndex: NodeIndex) => Array<NodeIndex>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1570)

Since v3.22.0