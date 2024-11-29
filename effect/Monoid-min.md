# min

Get a monoid where `combine` will return the minimum, based on the provided bounded order.

The `empty` value is the `maxBound` value.

To import and use `min` from the "Monoid" module:

ts
import \* as Monoid from "@effect/typeclass/Monoid"
// Can be accessed like this
Monoid.min
undefined

**Signature**

```ts
export declare const min: <A>(B: Bounded<A>) => Monoid<A>
```
