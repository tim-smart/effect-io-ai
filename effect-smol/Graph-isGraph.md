Package: `effect`<br />
Module: `Graph`<br />

## Graph.isGraph

Returns `true` if a value has the graph runtime type identifier, narrowing
it to a `Graph`.

**When to use**

Use to narrow an unknown value before treating it as a graph value.

**Gotchas**

This guard checks the shared graph runtime type identifier and does not
distinguish immutable graphs from mutable graphs.

**Signature**

```ts
declare const isGraph: (u: unknown) => u is Graph<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L416)

Since v4.0.0