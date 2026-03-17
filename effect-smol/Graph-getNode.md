Package: `effect`<br />
Module: `Graph`<br />

## Graph.getNode

Gets the data associated with a node index, if it exists.

**Example**

```ts
import { Graph } from "effect"
import * as Option from "effect/Option"

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
declare const getNode: { <N, E, T extends Kind = "directed">(nodeIndex: NodeIndex): (graph: Graph<N, E, T> | MutableGraph<N, E, T>) => Option.Option<N>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T> | MutableGraph<N, E, T>, nodeIndex: NodeIndex): Option.Option<N>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L489)

Since v4.0.0