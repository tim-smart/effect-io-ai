Package: `effect`<br />
Module: `Graph`<br />

## Graph.neighborhood

Returns the induced subgraph containing nodes within a radius of a node.

**Details**

The `radius` option is the maximum edge distance from `nodeIndex` and
defaults to `1`. The `direction` option controls directed graph traversal and
defaults to `"outgoing"`. The result has the same graph kind as `self` and
keeps all original edges whose endpoints are both reached. `"undirected"`
ignores edge direction while finding reachable nodes.

**Example** (Getting a local neighborhood)

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, string>((mutable) => {
  const a = Graph.addNode(mutable, "A")
  const b = Graph.addNode(mutable, "B")
  const c = Graph.addNode(mutable, "C")
  Graph.addEdge(mutable, a, b, "A-B")
  Graph.addEdge(mutable, b, c, "B-C")
})

const result = Graph.neighborhood(graph, 1, { radius: 1 })

console.log(Graph.nodeCount(result)) // 2
```

**Signature**

```ts
declare const neighborhood: { (nodeIndex: NodeIndex, options?: NeighborhoodConfig): <N, E, T extends Kind = "directed">(self: Graph<N, E, T>) => Graph<N, E, T>; <N, E, T extends Kind = "directed">(self: Graph<N, E, T>, nodeIndex: NodeIndex, options?: NeighborhoodConfig): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L1350)

Since v4.0.0