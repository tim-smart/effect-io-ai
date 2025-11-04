Package: `effect`<br />
Module: `Graph`<br />

## Graph.toGraphViz

Exports a graph to GraphViz DOT format for visualization.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const nodeC = Graph.addNode(mutable, "Node C")
  Graph.addEdge(mutable, nodeA, nodeB, 1)
  Graph.addEdge(mutable, nodeB, nodeC, 2)
  Graph.addEdge(mutable, nodeC, nodeA, 3)
})

const dot = Graph.toGraphViz(graph)
console.log(dot)
// digraph G {
//   "0" [label="Node A"];
//   "1" [label="Node B"];
//   "2" [label="Node C"];
//   "0" -> "1" [label="1"];
//   "1" -> "2" [label="2"];
//   "2" -> "0" [label="3"];
// }
```

**Signature**

```ts
declare const toGraphViz: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, options?: { readonly nodeLabel?: (data: N) => string; readonly edgeLabel?: (data: E) => string; readonly graphName?: string; }) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1602)

Since v3.18.0