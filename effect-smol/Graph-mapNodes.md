Package: `effect`<br />
Module: `Graph`<br />

## Graph.mapNodes

Transforms every node's data in a mutable graph in place using the provided
mapping function.

**Details**

Node indices and edges are preserved; only the stored node data is replaced.

**Example** (Mapping node data)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>((mutable) => {
  Graph.addNode(mutable, "node a")
  Graph.addNode(mutable, "node b")
  Graph.addNode(mutable, "node c")
  Graph.mapNodes(mutable, (data) => data.toUpperCase())
})

const nodeData = Graph.getNode(graph, 0)
console.log(nodeData) // Option.some("NODE A")
```

**Signature**

```ts
declare const mapNodes: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, f: (data: N) => N) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L1018)

Since v3.18.0