Package: `effect`<br />
Module: `Graph`<br />

## Graph.NodeWalker

Type alias for node iteration using Walker.
NodeWalker is represented as Walker<NodeIndex, N>.

**When to use**

Use as the shared node walker type returned by graph traversal and node
listing APIs.

**See**

- `Walker` for the generic lazy iterator wrapper
- `EdgeWalker` for edge iterators

**Signature**

```ts
type NodeWalker<N> = Walker<NodeIndex, N>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L3960)

Since v3.18.0