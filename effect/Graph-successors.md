Package: `effect`<br />
Module: `Graph`<br />

## Graph.successors

Returns the outgoing neighbor node indices for a node in a directed graph.

**When to use**

Use when you need the nodes reached by following outgoing edges from a node in
a directed graph.

**Gotchas**

Throws a `GraphError` when used with an undirected graph.

**See**

- `predecessors` for incoming neighbors in a directed graph
- `neighbors` for generic neighbor lookup across graph kinds

**Signature**

```ts
declare const successors: { (nodeIndex: NodeIndex): <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">) => Array<NodeIndex>; <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">, nodeIndex: NodeIndex): Array<NodeIndex>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2761)

Since v4.0.0