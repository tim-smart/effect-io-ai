Package: `effect`<br />
Module: `Graph`<br />

## Graph.predecessors

Returns the incoming neighbor node indices for a node in a directed graph.

**When to use**

Use when you need the nodes that reach a node by following incoming edges in a
directed graph.

**Gotchas**

Throws a `GraphError` when used with an undirected graph.

**See**

- `successors` for outgoing neighbors in a directed graph
- `neighbors` for generic neighbor lookup across graph kinds

**Signature**

```ts
declare const predecessors: { (nodeIndex: NodeIndex): <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">) => Array<NodeIndex>; <N, E>(graph: Graph<N, E, "directed"> | MutableGraph<N, E, "directed">, nodeIndex: NodeIndex): Array<NodeIndex>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1889)

Since v4.0.0