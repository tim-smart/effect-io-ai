Package: `effect`<br />
Module: `Graph`<br />

## Graph.Edge

Edge data containing source, target, and user data.

**When to use**

Use as the graph edge value returned by `getEdge` and `edges` when you need
the source node, target node, and stored edge data together.

**See**

- `getEdge` for reading a single edge by identifier
- `addEdge` for adding edges to a graph
- `edges` for iterating graph edges

**Signature**

```ts
declare class Edge<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L132)

Since v3.18.0