# catchAll

Recovers from all errors.

To import and use `catchAll` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.catchAll
undefined

**Signature**

```ts
export declare const catchAll: {
  <E, B, E1, R1>(f: (e: E) => STM<B, E1, R1>): <A, R>(self: STM<A, E, R>) => STM<B | A, E1, R1 | R>
  <A, E, R, B, E1, R1>(self: STM<A, E, R>, f: (e: E) => STM<B, E1, R1>): STM<A | B, E1, R | R1>
}
```
