Package: `effect`<br />
Module: `Graph`<br />

## Graph.stronglyConnectedComponents

Find strongly connected components in a directed graph using Kosaraju's algorithm.
Each SCC is represented as an array of node indices.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "A->B")
  Graph.addEdge(mutable, b, c, "B->C")
  Graph.addEdge(mutable, c, a, "C->A") // Creates SCC: A-B-C
})

const sccs = Graph.stronglyConnectedComponents(graph)
console.log(sccs) // [[0, 1, 2]]
```

**Signature**

```ts
declare const stronglyConnectedComponents: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Array<Array<NodeIndex>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2159)

Since v3.18.0