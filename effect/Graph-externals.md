Package: `effect`<br />
Module: `Graph`<br />

## Graph.externals

Creates an iterator over external nodes (nodes without edges in specified direction).

External nodes are nodes that have no outgoing edges (direction="outgoing") or
no incoming edges (direction="incoming"). These are useful for finding
sources, sinks, or isolated nodes.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  const source = Graph.addNode(mutable, "source")     // 0 - no incoming
  const middle = Graph.addNode(mutable, "middle")     // 1 - has both
  const sink = Graph.addNode(mutable, "sink")         // 2 - no outgoing
  const isolated = Graph.addNode(mutable, "isolated") // 3 - no edges

  Graph.addEdge(mutable, source, middle, 1)
  Graph.addEdge(mutable, middle, sink, 2)
})

// Nodes with no outgoing edges (sinks + isolated)
const sinks = Array.from(Graph.indices(Graph.externals(graph, { direction: "outgoing" })))
console.log(sinks) // [2, 3]

// Nodes with no incoming edges (sources + isolated)
const sources = Array.from(Graph.indices(Graph.externals(graph, { direction: "incoming" })))
console.log(sources) // [0, 3]
```

**Signature**

```ts
declare const externals: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, config?: ExternalsConfig) => NodeWalker<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L3698)

Since v3.18.0