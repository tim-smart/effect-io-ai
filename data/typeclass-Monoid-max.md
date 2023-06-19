# max

Get a monoid where `combine` will return the maximum, based on the provided bounded order.

The `empty` value is the `minimum` value.

Part of the `Monoid` module, imported from `@effect/data/typeclass/Monoid`.

**Signature**

```ts
export declare const max: <A>(B: Bounded<A>) => Monoid<A>
```
