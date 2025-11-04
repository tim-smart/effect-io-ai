Package: `effect`<br />
Module: `Graph`<br />

## Graph.findEdge

Finds the first edge that matches the given predicate.

**Example**

```ts
import { Graph, Option } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const nodeC = Graph.addNode(mutable, "Node C")
  Graph.addEdge(mutable, nodeA, nodeB, 10)
  Graph.addEdge(mutable, nodeB, nodeC, 20)
})

const result = Graph.findEdge(graph, (data) => data > 15)
console.log(result) // Option.some(1)

const notFound = Graph.findEdge(graph, (data) => data > 100)
console.log(notFound) // Option.none()
```

**Signature**

```ts
declare const findEdge: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, predicate: (data: E, source: NodeIndex, target: NodeIndex) => boolean) => Option.Option<EdgeIndex>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L654)

Since v3.18.0