Package: `effect`<br />
Module: `Graph`<br />

## Graph.connectedComponents

Find connected components in an undirected graph.
Each component is represented as an array of node indices.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.undirected<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  const d = Graph.addNode(mutable, "D")
  Graph.addEdge(mutable, a, b, "edge") // Component 1: A-B
  Graph.addEdge(mutable, c, d, "edge") // Component 2: C-D
})

const components = Graph.connectedComponents(graph)
console.log(components) // [[0, 1], [2, 3]]
```

**Signature**

```ts
declare const connectedComponents: <N, E>(graph: Graph<N, E, "undirected"> | MutableGraph<N, E, "undirected">) => Array<Array<NodeIndex>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1920)

Since v3.18.0