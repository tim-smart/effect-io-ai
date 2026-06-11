Package: `effect`<br />
Module: `Graph`<br />

## Graph.EdgeIndex

Edge index for edge identification using plain numbers.

**When to use**

Use when you need to keep the identifier for a graph edge so you can later
read, update, remove, or compare that edge.

**Gotchas**

An `EdgeIndex` is an identifier, not an array offset. Removed edge
identifiers are not reused.

**See**

- `NodeIndex` for node identifiers instead of edge identifiers
- `Edge` for the edge value addressed by this identifier
- `addEdge` for creating edge identifiers
- `getEdge` for reading edges by identifier

**Signature**

```ts
type EdgeIndex = number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L72)

Since v3.18.0