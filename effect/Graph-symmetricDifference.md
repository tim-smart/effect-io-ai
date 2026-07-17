Package: `effect`<br />
Module: `Graph`<br />

## Graph.symmetricDifference

Returns edges present in exactly one of two graphs.

**Details**

Keeps nodes from both graphs. Overlapping nodes use data from `that`. The
result has the same graph kind as `self`. Throws a `GraphError` when the
graph kinds do not match. `nodeIdentity` and `edgeIdentity` default to the
complete node and edge data. Edge identity also includes the endpoint
identities.

`G1 Δ G2 = {V1 ∪ V2, (E1 ∪ E2) \ (E1 ∩ E2)}`

**Gotchas**

Edges with different projected identities are distinct.
Nodes with equal identities in one input graph are coalesced. The last node
supplies the data, and redirected edges can collapse or become self-loops.
Parallel edges with equal identities are coalesced before the graphs are
compared.

**Example** (Finding differing edges)

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
  const d = Graph.addNode(mutable, "D")
  Graph.addEdge(mutable, b, c, "B-C")
  Graph.addEdge(mutable, c, d, "C-D")
})

const result = Graph.symmetricDifference(left, right)

console.log(Graph.nodeCount(result)) // 4
console.log(Graph.edgeCount(result)) // 2
```

**Signature**

```ts
declare const symmetricDifference: { <N, E, T extends Kind = "directed", NI = N, EI = E>(that: Graph<N, E, T>, options?: IdentityOptions<N, E, NI, EI>): (self: Graph<N, E, NoInfer<T>>) => Graph<N, E, T>; <N, E, T extends Kind = "directed", NI = N, EI = E>(self: Graph<N, E, T>, that: Graph<N, E, NoInfer<T>>, options?: IdentityOptions<N, E, NI, EI>): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1180)

Since v4.0.0