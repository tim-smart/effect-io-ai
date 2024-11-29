# max

Get a monoid where `combine` will return the maximum, based on the provided bounded order.

The `empty` value is the `minimum` value.

To import and use `max` from the "Monoid" module:

ts
import \* as Monoid from "@effect/typeclass/Monoid"
// Can be accessed like this
Monoid.max
undefined

**Signature**

```ts
export declare const max: <A>(B: Bounded<A>) => Monoid<A>
```
