Package: `effect`<br />
Module: `Graph`<br />

## Graph.compose

Composes two graphs, merging nodes by identity.

**Details**

Nodes and edges present in both graphs use data from `that`. The result has
the same graph kind as `self`. Throws a `GraphError` when the graph kinds do
not match. `nodeIdentity` and `edgeIdentity` default to the complete node and
edge data. Edge identity also includes the endpoint identities.

`G1 ∪ G2 = {V1 ∪ V2, E1 ∪ E2}`

**Gotchas**

Nodes with equal identities in one input graph are coalesced. The last node
supplies the data, and redirected edges can collapse or become self-loops.
Parallel edges with equal identities are also coalesced, with the last edge
supplying the data.

**Example** (Combining graphs)

```ts
import { Graph } from "effect"

const left = Graph.directed<{ id: string }, string>((mutable) => {
  const a = Graph.addNode(mutable, { id: "A" })
  const b = Graph.addNode(mutable, { id: "B" })
  Graph.addEdge(mutable, a, b, "A-B")
})

const right = Graph.directed<{ id: string }, string>((mutable) => {
  const b = Graph.addNode(mutable, { id: "B" })
  const c = Graph.addNode(mutable, { id: "C" })
  Graph.addEdge(mutable, b, c, "B-C")
})

const result = Graph.compose(left, right, {
  nodeIdentity: (node) => node.id
})

console.log(Graph.nodeCount(result)) // 3
console.log(Graph.edgeCount(result)) // 2
```

**Signature**

```ts
declare const compose: { <N, E, T extends Kind = "directed", NI = N, EI = E>(that: Graph<N, E, T>, options?: IdentityOptions<N, E, NI, EI>): (self: Graph<N, E, NoInfer<T>>) => Graph<N, E, T>; <N, E, T extends Kind = "directed", NI = N, EI = E>(self: Graph<N, E, T>, that: Graph<N, E, NoInfer<T>>, options?: IdentityOptions<N, E, NI, EI>): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L904)

Since v4.0.0