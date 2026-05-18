Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.RcRef.Variance

Type-level variance marker for `RcRef`.

**Notes**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcRef.ts#L98)

Since v3.5.0