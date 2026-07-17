Package: `effect`<br />
Module: `Graph`<br />

## Graph.intersection

Returns the intersection of two graphs, matching nodes by identity.

**Details**

Node data comes from `self`, and edge data comes from `that`. The result has
the same graph kind as `self`. Throws a `GraphError` when the graph kinds do
not match. `nodeIdentity` and `edgeIdentity` default to the complete node and
edge data. Edge identity also includes the endpoint identities.

`G1 ∩ G2 = {V1 ∩ V2, E1 ∩ E2}`

**Gotchas**

Nodes with equal identities in one input graph are coalesced. The last node
supplies the data, and redirected edges can collapse or become self-loops.
The result contains at most one edge for each shared edge identity.

**Example** (Finding shared structure)

```ts
import { Graph } from "effect"

const left = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, "shared")
})

const right = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  Graph.addEdge(mutable, a, b, "shared")
})

const result = Graph.intersection(left, right)

console.log(Graph.nodeCount(result)) // 2
console.log(Graph.edgeCount(result)) // 1
```

**Signature**

```ts
declare const intersection: { <N, E, T extends Kind = "directed", NI = N, EI = E>(that: Graph<N, E, T>, options?: IdentityOptions<N, E, NI, EI>): (self: Graph<N, E, NoInfer<T>>) => Graph<N, E, T>; <N, E, T extends Kind = "directed", NI = N, EI = E>(self: Graph<N, E, T>, that: Graph<N, E, NoInfer<T>>, options?: IdentityOptions<N, E, NI, EI>): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L994)

Since v4.0.0