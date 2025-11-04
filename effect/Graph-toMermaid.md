Package: `effect`<br />
Module: `Graph`<br />

## Graph.toMermaid

Exports a graph to Mermaid diagram format for visualization.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const app = Graph.addNode(mutable, "App")
  const db = Graph.addNode(mutable, "Database")
  const cache = Graph.addNode(mutable, "Cache")
  Graph.addEdge(mutable, app, db, 1)
  Graph.addEdge(mutable, app, cache, 2)
})

const mermaid = Graph.toMermaid(graph)
console.log(mermaid)
// flowchart TD
//   0["App"]
//   1["Database"]
//   2["Cache"]
//   0 -->|"1"| 1
//   0 -->|"2"| 2
```

**Signature**

```ts
declare const toMermaid: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, options?: MermaidOptions<N, E>) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1773)

Since v3.18.0