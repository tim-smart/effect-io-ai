Package: `effect`<br />
Module: `Graph`<br />

## Graph.addEdge

Adds a new edge to a mutable graph and returns its index.

**When to use**

Use to connect two existing nodes in a mutable graph while storing edge data
and receiving the new edge identifier.

**Details**

Creates an `Edge` with the source, target, and data at the next edge index,
updates adjacency indexes, and increments the graph's next edge index.
Undirected graphs register the same edge for both endpoints.

**Gotchas**

The source and target nodes must already exist in the mutable graph; missing
endpoints throw a `GraphError`.

**Example** (Adding edges)

```ts
import { Graph } from "effect"

const result = Graph.mutate(Graph.directed<string, number>(), (mutable) => {
  const nodeA = Graph.addNode(mutable, "Node A")
  const nodeB = Graph.addNode(mutable, "Node B")
  const edge = Graph.addEdge(mutable, nodeA, nodeB, 42)
  console.log(edge) // EdgeIndex with value 0
})
```

**See**

- `mutate` for obtaining a mutable graph from an immutable graph
- `addNode` for creating node indexes before connecting them
- `getEdge` for reading the returned edge
- `removeEdge` for removing an edge from a mutable graph

**Signature**

```ts
declare const addEdge: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>, source: NodeIndex, target: NodeIndex, data: E) => EdgeIndex
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L2308)

Since v3.18.0