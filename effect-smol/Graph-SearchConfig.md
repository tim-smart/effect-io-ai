Package: `effect`<br />
Module: `Graph`<br />

## Graph.SearchConfig

Configuration for DFS, BFS, and postorder graph traversals.

**When to use**

Use to configure the starting node indices and edge-following direction for
lazy graph traversals.

**Details**

`start` supplies the node indices where traversal begins. If it is omitted,
the iterator is empty. `direction` chooses whether traversal follows
outgoing or incoming edges.

**Gotchas**

Traversal creation throws a `GraphError` when any configured `start` node
does not exist.

**See**

- `dfs` for depth-first traversal
- `bfs` for breadth-first traversal
- `dfsPostOrder` for depth-first postorder traversal

**Signature**

```ts
export interface SearchConfig {
  readonly start?: Array<NodeIndex>
  readonly direction?: Direction
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L4080)

Since v3.18.0