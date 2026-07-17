Package: `effect`<br />
Module: `Graph`<br />

## Graph.dfs

Creates a lazy depth-first traversal iterator from the configured start
nodes.

**Details**

If no start nodes are supplied, the iterator is empty. The `direction` option
chooses whether to follow outgoing or incoming edges. The `radius` option
limits traversal by edge distance from the start nodes. Throws a `GraphError`
if any configured start node does not exist.

**Example** (Traversing depth-first)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, 1)
  Graph.addEdge(mutable, b, c, 1)
})

// Start from a specific node
const dfs1 = Graph.dfs(graph, { start: [0] })
for (const nodeIndex of Graph.indices(dfs1)) {
  console.log(nodeIndex) // Traverses in DFS order: 0, 1, 2
}

// Empty iterator (no starting nodes)
const dfs2 = Graph.dfs(graph)
// Can be used programmatically
```

**Signature**

```ts
declare const dfs: { (config?: SearchConfig): <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => NodeWalker<N>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config?: SearchConfig): NodeWalker<N>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L5259)

Since v3.18.0