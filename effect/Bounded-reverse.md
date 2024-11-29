# reverse

Reverses the `Order` of a `Bounded` and flips `maxBound` and `minBound` values.

To import and use `reverse` from the "Bounded" module:

ts
import \* as Bounded from "@effect/typeclass/Bounded"
// Can be accessed like this
Bounded.reverse
undefined

**Signature**

```ts
export declare const reverse: <A>(B: Bounded<A>) => Bounded<A>
```
