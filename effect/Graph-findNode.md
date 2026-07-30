Package: `effect`<br />
Module: `Graph`<br />

## Graph.findNode

Finds the first node that matches the given predicate.

**Example**

```ts
import { Graph, Option } from "effect"

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
declare const findNode: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, predicate: (data: N) => boolean) => Option.Option<NodeIndex>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L581)

Since v3.18.0