Package: `effect`<br />
Module: `Graph`<br />

## Graph.make

Creates a graph constructor for the specified graph kind.

**When to use**

Use when the graph kind is selected dynamically. Prefer `directed` or
`undirected` when the kind is known statically.

**Example** (Constructing by kind)

```ts
import { Graph } from "effect"

const makeGraph = Graph.make("directed")
const graph = makeGraph<string, number>((mutable) => {
  Graph.addNode(mutable, "A")
})

console.log(graph.type) // "directed"
```

**See**

- `directed` for constructing a directed graph directly
- `undirected` for constructing an undirected graph directly

**Signature**

```ts
declare const make: <T extends Kind>(type: T) => <N, E>(mutate?: (mutable: MutableGraph<N, E, T>) => undefined) => Graph<N, E, T>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L501)

Since v4.0.0