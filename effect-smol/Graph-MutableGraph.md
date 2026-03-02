Package: `effect`<br />
Module: `Graph`<br />

## Graph.MutableGraph

Mutable graph interface.

**Signature**

```ts
export interface MutableGraph<out N, out E, T extends Kind = "directed"> extends Proto<N, E> {
  readonly type: T
  readonly mutable: true
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Graph.ts#L88)

Since v4.0.0