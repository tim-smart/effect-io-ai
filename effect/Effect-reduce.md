# reduce

Folds an `Iterable<A>` using an effectual function f, working sequentially
from left to right.

To import and use `reduce` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.reduce
undefined

**Signature**

```ts
export declare const reduce: {
  <Z, A, E, R>(zero: Z, f: (z: Z, a: A, i: number) => Effect<Z, E, R>): (elements: Iterable<A>) => Effect<Z, E, R>
  <A, Z, E, R>(elements: Iterable<A>, zero: Z, f: (z: Z, a: A, i: number) => Effect<Z, E, R>): Effect<Z, E, R>
}
```
