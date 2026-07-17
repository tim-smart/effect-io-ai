Package: `effect`<br />
Module: `Graph`<br />

## Graph.isGraph

Returns `true` if a value has the graph runtime type identifier, narrowing
it to an immutable or mutable graph.

**When to use**

Use to narrow an unknown value before treating it as a graph value.

**Gotchas**

This guard checks the shared graph runtime type identifier and does not
distinguish immutable graphs from mutable graphs or directed graphs from
undirected graphs.

**Signature**

```ts
declare const isGraph: <N = unknown, E = unknown, T extends Kind = Kind, U = never>(u: U | Graph<N, E, T> | MutableGraph<N, E, T>) => u is Graph<N, E, T> | MutableGraph<N, E, T>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L471)

Since v4.0.0