Package: `effect`<br />
Module: `Graph`<br />

## Graph.Graph.Variance

Type-level variance marker for immutable graphs.

**Signature**

```ts
export interface Variance<out N, out E> {
    readonly _N: Covariant<N>
    readonly _E: Covariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Graph.ts#L161)

Since v4.0.0