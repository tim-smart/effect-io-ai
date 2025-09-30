Package: `effect`<br />
Module: `Graph`<br />

## Graph.findEdges

Finds all edges that match the given predicate.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const nodeC = Graph.addNode(mutable, "Node C")
  Graph.addEdge(mutable, nodeA, nodeB, 10)
  Graph.addEdge(mutable, nodeB, nodeC, 20)
  Graph.addEdge(mutable, nodeC, nodeA, 30)
})

const result = Graph.findEdges(graph, (data) => data >= 20)
console.log(result) // [1, 2]

const empty = Graph.findEdges(graph, (data) => data > 100)
console.log(empty) // []
```

**Signature**

```ts
declare const findEdges: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, predicate: (data: E, source: NodeIndex, target: NodeIndex) => boolean) => Array<EdgeIndex>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L687)

Since v3.18.0