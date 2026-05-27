Package: `effect`<br />
Module: `Graph`<br />

## Graph.NodeIndex

Node index for node identification using plain numbers.

**When to use**

Use when storing or passing the stable identifier of a graph node between
`Graph` operations.

**Details**

`addNode` allocates node identifiers from the graph's next node index.

**Gotchas**

A `NodeIndex` is an identifier, not an array offset. Removed node identifiers
are not reused.

**See**

- `EdgeIndex` for edge identifiers instead of node identifiers
- `addNode` for creating node identifiers

**Signature**

```ts
type NodeIndex = number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L92)

Since v3.18.0