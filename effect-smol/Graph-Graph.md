Package: `effect`<br />
Module: `Graph`<br />

## Graph.Graph

Immutable graph interface.

**Signature**

```ts
export interface Graph<out N, out E, T extends Kind = "directed"> extends Proto<N, E> {
  readonly type: T
  readonly mutable: false
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L77)

Since v4.0.0