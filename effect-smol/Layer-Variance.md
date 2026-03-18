Package: `effect`<br />
Module: `Layer`<br />

## Layer.Variance

The variance interface for Layer type parameters.

**Signature**

```ts
export interface Variance<in ROut, out E, out RIn> {
  readonly [TypeId]: {
    readonly _ROut: Types.Contravariant<ROut>
    readonly _E: Types.Covariant<E>
    readonly _RIn: Types.Covariant<RIn>
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L65)

Since v2.0.0