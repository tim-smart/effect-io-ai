Package: `effect`<br />
Module: `Graph`<br />

## Graph.findNodes

Finds all nodes that match the given predicate.

**Example** (Finding matching nodes)

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  Graph.addNode(mutable, "Start A")
  Graph.addNode(mutable, "Node B")
  Graph.addNode(mutable, "Start C")
})

const result = Graph.findNodes(graph, (data) => data.startsWith("Start"))
console.log(result) // [0, 2]

const empty = Graph.findNodes(graph, (data) => data === "Not Found")
console.log(empty) // []
```

**Signature**

```ts
declare const findNodes: { <N>(predicate: (data: N) => boolean): <E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Array<NodeIndex>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, predicate: (data: N) => boolean): Array<NodeIndex>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L805)

Since v3.18.0