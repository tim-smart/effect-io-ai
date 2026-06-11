Package: `effect`<br />
Module: `Graph`<br />

## Graph.GraphError

Error thrown by graph operations when the requested graph structure is
invalid, such as referencing a missing node or using unsupported edge
weights.

**When to use**

Use when handling failures thrown by graph operations that reject invalid
graph structure or unsupported algorithm inputs.

**Signature**

```ts
declare class GraphError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L346)

Since v3.18.0