Package: `effect`<br />
Module: `Graph`<br />

## Graph.mutate

Performs scoped mutations on a graph, automatically managing the mutation lifecycle.

**Example** (Applying scoped mutations)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>()
const newGraph = Graph.mutate(graph, (mutable) => {
  const nodeA = Graph.addNode(mutable, "A")
  const nodeB = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, nodeA, nodeB, 1)
})

console.log(Graph.nodeCount(newGraph)) // 2
console.log(Graph.edgeCount(newGraph)) // 1
```

**Signature**

```ts
declare const mutate: { <N, E, T extends Kind = "directed">(f: (mutable: MutableGraph<N, E, T>) => void): (graph: Graph<N, E, T>) => Graph<N, E, T>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T>, f: (mutable: MutableGraph<N, E, T>) => void): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L479)

Since v4.0.0