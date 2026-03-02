Package: `effect`<br />
Module: `Graph`<br />

## Graph.findEdge

Finds the first edge that matches the given predicate.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const nodeC = Graph.addNode(mutable, "Node C")
  Graph.addEdge(mutable, nodeA, nodeB, 10)
  Graph.addEdge(mutable, nodeB, nodeC, 20)
})

const result = Graph.findEdge(graph, (data) => data > 15)
console.log(result) // 1

const notFound = Graph.findEdge(graph, (data) => data > 100)
console.log(notFound) // undefined
```

**Signature**

```ts
declare const findEdge: { <E>(predicate: (data: E, source: NodeIndex, target: NodeIndex) => boolean): <N, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => EdgeIndex | undefined; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, predicate: (data: E, source: NodeIndex, target: NodeIndex) => boolean): EdgeIndex | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L669)

Since v4.0.0