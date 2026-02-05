Package: `effect`<br />
Module: `Graph`<br />

## Graph.dfsPostOrder

Creates a new DFS postorder iterator with optional configuration.

The iterator maintains a stack with visit state tracking and emits nodes
in postorder (after all descendants have been processed). Essential for
dependency resolution and tree destruction algorithms.

**Example**

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
declare const dfsPostOrder: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config?: SearchConfig) => NodeWalker<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3500)

Since v3.18.0