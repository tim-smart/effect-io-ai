Package: `effect`<br />
Module: `Graph`<br />

## Graph.beginMutation

Creates a mutable scope for safe graph mutations by copying the data structure.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>()
const mutable = Graph.beginMutation(graph)
// Now mutable can be safely modified without affecting original graph
```

**Signature**

```ts
declare const beginMutation: <N, E, T extends Kind = "directed">(graph: Graph<N, E, T>) => MutableGraph<N, E, T>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L340)

Since v3.18.0