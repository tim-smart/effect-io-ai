# tap

"Peeks" at the success of transactional effect.

To import and use `tap` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.tap
undefined

**Signature**

```ts
export declare const tap: {
  <A, X, E2, R2>(f: (a: A) => STM<X, E2, R2>): <E, R>(self: STM<A, E, R>) => STM<A, E2 | E, R2 | R>
  <A, E, R, X, E2, R2>(self: STM<A, E, R>, f: (a: A) => STM<X, E2, R2>): STM<A, E | E2, R | R2>
}
```
