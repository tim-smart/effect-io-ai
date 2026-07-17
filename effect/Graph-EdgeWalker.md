Package: `effect`<br />
Module: `Graph`<br />

## Graph.EdgeWalker

Type alias for edge iteration using Walker.
EdgeWalker is represented as Walker<EdgeIndex, Edge<E>>.

**When to use**

Use to type helpers or parameters that consume edge iterators returned by
`Graph` APIs, where each item is keyed by an `EdgeIndex` and carries the
full `Edge`.

**See**

- `Walker` for the generic lazy iterator wrapper
- `NodeWalker` for node iterators
- `edges` for creating edge walkers

**Signature**

```ts
type EdgeWalker<E> = Walker<EdgeIndex, Edge<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L5113)

Since v3.18.0