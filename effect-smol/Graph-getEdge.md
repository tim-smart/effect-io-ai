Package: `effect`<br />
Module: `Graph`<br />

## Graph.getEdge

Gets the edge data associated with an edge index, if it exists.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  Graph.addEdge(mutable, nodeA, nodeB, 42)
})

const edgeIndex = 0
const edgeData = Graph.getEdge(graph, edgeIndex)

if (edgeData._tag === "Some") {
  console.log(edgeData.value.data) // 42
  console.log(edgeData.value.source) // NodeIndex(0)
  console.log(edgeData.value.target) // NodeIndex(1)
}
```

**Signature**

```ts
declare const getEdge: { <E>(edgeIndex: EdgeIndex): <N, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Option.Option<Edge<E>>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, edgeIndex: EdgeIndex): Option.Option<Edge<E>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1416)

Since v4.0.0