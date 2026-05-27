Package: `effect`<br />
Module: `Stream`<br />

## Stream.Variance

Type-level variance marker for `Stream`.

**Details**

The emitted value `A`, error `E`, and service requirement `R` type
parameters are covariant.

**Signature**

```ts
export interface Variance<out A, out E, out R> {
  readonly [TypeId]: VarianceStruct<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L255)

Since v2.0.0