Package: `effect`<br />
Module: `Schema`<br />

## Schema.LazyArbitrary

A thunk that, given the `fast-check` module, returns an `Arbitrary<T>`.
Use this type when you need to defer instantiation of the arbitrary, for
example to support recursive schemas.

**Signature**

```ts
type LazyArbitrary<T> = (fc: typeof FastCheck) => FastCheck.Arbitrary<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10878)

Since v4.0.0