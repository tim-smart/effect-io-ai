# max

`Monoid` that returns last maximum of elements.

To import and use `max` from the "Bounded" module:

ts
import \* as Bounded from "@effect/typeclass/Bounded"
// Can be accessed like this
Bounded.max
undefined

**Signature**

```ts
export declare const max: <A>(B: Bounded<A>) => Monoid<A>
```
