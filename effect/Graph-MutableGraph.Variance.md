Package: `effect`<br />
Module: `Graph`<br />

## Graph.MutableGraph.Variance

Type-level variance marker for scoped mutable graphs.

**Signature**

```ts
export interface Variance<in out N, in out E> {
    readonly _N: Invariant<N>
    readonly _E: Invariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L204)

Since v4.0.0