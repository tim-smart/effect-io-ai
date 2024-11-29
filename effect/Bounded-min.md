# min

`Monoid` that returns last minimum of elements.

To import and use `min` from the "Bounded" module:

ts
import \* as Bounded from "@effect/typeclass/Bounded"
// Can be accessed like this
Bounded.min
undefined

**Signature**

```ts
export declare const min: <A>(B: Bounded<A>) => Monoid<A>
```
