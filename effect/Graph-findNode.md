Package: `effect`<br />
Module: `Graph`<br />

## Graph.findNode

Finds the first node that matches the given predicate.

**Example** (Finding the first matching node)

```ts
import { Graph } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  Graph.addNode(mutable, "Node A")
  Graph.addNode(mutable, "Node B")
  Graph.addNode(mutable, "Node C")
})

const result = Graph.findNode(graph, (data) => data.startsWith("Node B"))
console.log(result) // Option.some(1)

const notFound = Graph.findNode(graph, (data) => data === "Node D")
console.log(notFound) // Option.none()
```

**Signature**

```ts
declare const findNode: { <N>(predicate: (data: N) => boolean): <E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Option.Option<NodeIndex>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, predicate: (data: N) => boolean): Option.Option<NodeIndex>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1621)

Since v3.18.0