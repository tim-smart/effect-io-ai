Package: `effect`<br />
Module: `Graph`<br />

## Graph.difference

Returns `self` without edges also present in `that`.

**Details**

All nodes from `self` are preserved. Edges are matched by endpoint and edge
identities. The result has the same graph kind as `self`. Throws a
`GraphError` when the graph kinds do not match. `nodeIdentity` and
`edgeIdentity` default to the complete node and edge data.

`G1 \ G2 = {V1, E1 \ E2}`

**Gotchas**

Nodes with equal identities in one input graph are coalesced. The last node
supplies the data, and redirected edges can collapse or become self-loops.
If `that` contains an edge identity, every parallel edge with that identity
is removed from `self`.

**Example** (Removing shared edges)

```ts
import { Graph } from "effect"

const left = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "A-B")
  Graph.addEdge(mutable, b, c, "B-C")
})

const right = Graph.directed<string, string>((mutable) => {
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, b, c, "B-C")
})

const result = Graph.difference(left, right)

console.log(Graph.nodeCount(result)) // 3
console.log(Graph.edgeCount(result)) // 1
```

**Signature**

```ts
declare const difference: { <N, E, T extends Kind = "directed", NI = N, EI = E>(that: Graph<N, E, T>, options?: IdentityOptions<N, E, NI, EI>): (self: Graph<N, E, NoInfer<T>>) => Graph<N, E, T>; <N, E, T extends Kind = "directed", NI = N, EI = E>(self: Graph<N, E, T>, that: Graph<N, E, NoInfer<T>>, options?: IdentityOptions<N, E, NI, EI>): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1092)

Since v4.0.0