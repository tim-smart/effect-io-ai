## max

Get a monoid where `combine` will return the maximum, based on the provided bounded order.

The `empty` value is the `minimum` value.

**Signature**

```ts
declare const max: <A>(B: Bounded<A>) => Monoid<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Monoid.ts#L46)

Since v0.24.0