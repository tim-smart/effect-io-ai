Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.RcRef.Variance

Type-level variance marker for `RcRef`.

**When to use**

Use to carry the value and error type parameters for `RcRef` in Effect's
type machinery.

**Details**

This interface records the covariant value and error types carried by an
`RcRef`. It is used by Effect's type machinery and is not normally
referenced directly by users.

**Signature**

```ts
export interface Variance<A, E> {
    readonly _A: Types.Covariant<A>
    readonly _E: Types.Covariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcRef.ts#L100)

Since v3.5.0