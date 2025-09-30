Package: `effect`<br />
Module: `Graph`<br />

## Graph.mutate

Performs scoped mutations on a graph, automatically managing the mutation lifecycle.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>()
const newGraph = Graph.mutate(graph, (mutable) => {
  // Safe mutations go here
  // mutable gets automatically converted back to immutable
})
```

**Signature**

```ts
declare const mutate: { <N, E, T extends Kind = "directed">(f: (mutable: MutableGraph<N, E, T>) => void): (graph: Graph<N, E, T>) => Graph<N, E, T>; <N, E, T extends Kind = "directed">(graph: Graph<N, E, T>, f: (mutable: MutableGraph<N, E, T>) => void): Graph<N, E, T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L414)

Since v3.18.0