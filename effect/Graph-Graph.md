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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L92)

Since v3.18.0