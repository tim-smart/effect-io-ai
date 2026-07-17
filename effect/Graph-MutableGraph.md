Package: `effect`<br />
Module: `Graph`<br />

## Graph.MutableGraph

Mutable graph interface.

**When to use**

Use when adding, removing, or updating nodes and edges inside a graph
mutation scope.

**See**

- `Graph` for the immutable graph interface
- `mutate` for scoped mutation of an immutable graph
- `beginMutation` for opening a mutable graph manually
- `endMutation` for returning to an immutable graph

**Signature**

```ts
export interface MutableGraph<in out N, in out E, T extends Kind = "directed">
  extends Iterable<readonly [NodeIndex, N]>, Equal.Equal, Pipeable, Inspectable
{
  readonly [TypeId]: MutableGraph.Variance<N, E>
  readonly type: T
  readonly mutable: true
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L183)

Since v3.18.0