Package: `effect`<br />
Module: `Graph`<br />

## Graph.Edge

Represents edge data containing source, target, and user data.

**When to use**

Use as the graph edge value that carries source node, target node, and stored
edge data together.

**See**

- `getEdge` for reading a single edge by identifier
- `addEdge` for adding edges to a graph
- `edges` for iterating graph edges

**Signature**

```ts
declare class Edge<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L90)

Since v3.18.0