Package: `effect`<br />
Module: `Schema`<br />

## Schema.declare

The schema type returned by `declare`, representing a non-parametric
opaque type `T` with no type parameters.

**Signature**

```ts
export interface declare<T, Iso = T> extends declareConstructor<T, T, readonly [], Iso> {
  readonly "Rebuild": declare<T, Iso>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L360)

Since v4.0.0