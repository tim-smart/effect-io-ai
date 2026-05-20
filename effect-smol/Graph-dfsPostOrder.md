Package: `effect`<br />
Module: `Graph`<br />

## Graph.dfsPostOrder

Creates a lazy depth-first postorder traversal iterator from the configured
start nodes.

**Details**

Nodes are emitted after their reachable descendants have been processed. If
no start nodes are supplied, the iterator is empty. The `direction` option
chooses whether to follow outgoing or incoming edges.

**Example** (Traversing in postorder)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const root = Graph.addNode(mutable, "root")
  const child1 = Graph.addNode(mutable, "child1")
  const child2 = Graph.addNode(mutable, "child2")
  Graph.addEdge(mutable, root, child1, 1)
  Graph.addEdge(mutable, root, child2, 1)
})

// Postorder: children before parents
const postOrder = Graph.dfsPostOrder(graph, { start: [0] })
for (const node of postOrder) {
  console.log(node) // 1, 2, 0
}
```

**Signature**

```ts
declare const dfsPostOrder: { (config?: SearchConfig): <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => NodeWalker<N>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config?: SearchConfig): NodeWalker<N>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L4203)

Since v3.18.0