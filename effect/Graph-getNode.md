Package: `effect`<br />
Module: `Graph`<br />

## Graph.getNode

Gets the data associated with a node index, if it exists.

**Example**

```ts
import { Graph, Option } from "effect"

const graph = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  Graph.addNode(mutable, "Node A")
})

const nodeIndex = 0
const nodeData = Graph.getNode(graph, nodeIndex)

if (Option.isSome(nodeData)) {
  console.log(nodeData.value) // "Node A"
}
```

**Signature**

```ts
declare const getNode: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, nodeIndex: NodeIndex) => Option.Option<N>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L499)

Since v3.18.0