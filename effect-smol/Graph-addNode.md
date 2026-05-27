Package: `effect`<br />
Module: `Graph`<br />

## Graph.addNode

Adds a new node to a mutable graph and returns its index.

**When to use**

Use to allocate a new node in a mutable graph before storing edges or
querying it by index.

**Details**

The returned index is allocated from the graph's next node index. The mutable
graph stores the node data and initializes empty incoming and outgoing edge
indexes for the new node.

**Gotchas**

`NodeIndex` values are identifiers and are not reused after removals.

**Example** (Adding nodes)

```ts
import { Graph } from "effect"

const result = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  console.log(nodeA) // NodeIndex with value 0
  console.log(nodeB) // NodeIndex with value 1
})
```

**See**

- `mutate` for obtaining a mutable graph from an immutable graph
- `addEdge` for connecting existing nodes
- `removeNode` for removing nodes from a mutable graph

**Signature**

```ts
declare const addNode: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, data: N) => NodeIndex
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L666)

Since v3.18.0