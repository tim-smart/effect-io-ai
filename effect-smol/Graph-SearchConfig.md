Package: `effect`<br />
Module: `Graph`<br />

## Graph.SearchConfig

Configuration for DFS, BFS, and postorder graph traversals.

**Details**

`start` supplies the node indices where traversal begins. If it is omitted,
the iterator is empty. `direction` chooses whether traversal follows
outgoing or incoming edges.

**Signature**

```ts
export interface SearchConfig {
  readonly start?: Array<NodeIndex>
  readonly direction?: Direction
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3823)

Since v3.18.0