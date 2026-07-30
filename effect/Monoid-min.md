Package: `@effect/typeclass`<br />
Module: `Monoid`<br />

## Monoid.min

Get a monoid where `combine` will return the minimum, based on the provided bounded order.

The `empty` value is the `maxBound` value.

**Signature**

```ts
declare const min: <A>(B: Bounded<A>) => Monoid<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Monoid.ts#L36)

Since v0.24.0