Package: `effect`<br />
Module: `Graph`<br />

## Graph.endMutation

Converts a mutable graph back to an immutable graph, ending the mutation scope.

**Example**

```ts
import { Graph } from "effect"

const graph = Graph.directed<string, number>()
const mutable = Graph.beginMutation(graph)
// ... perform mutations on mutable ...
const newGraph = Graph.endMutation(mutable)
```

**Signature**

```ts
declare const endMutation: <N, E, T extends Kind = "directed">(mutable: MutableGraph<N, E, T>) => Graph<N, E, T>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L380)

Since v3.18.0