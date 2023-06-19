# min

Get a monoid where `combine` will return the minimum, based on the provided bounded order.

The `empty` value is the `maxBound` value.

Part of the `Monoid` module, imported from `@effect/data/typeclass/Monoid`.

**Signature**

```ts
export declare const min: <A>(B: Bounded<A>) => Monoid<A>
```
