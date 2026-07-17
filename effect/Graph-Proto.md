Package: `effect`<br />
Module: `Graph`<br />

## Graph.Proto

Common public protocol for graph values.

**Details**

Contains only the runtime marker and shared protocols. Graph storage is kept
internal; use module functions such as `nodes`, `edges`, `getNode`, and
`getEdge` to inspect graph contents.

**Signature**

```ts
export interface Proto<out N, out E> extends Iterable<readonly [NodeIndex, N]>, Equal.Equal, Pipeable, Inspectable {
  readonly [TypeId]: Graph.Variance<N, E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L124)

Since v3.18.0