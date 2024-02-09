# catchAll

Recovers from all errors.

To import and use `catchAll` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.catchAll
```

**Signature**

```ts
export declare const catchAll: {
  <E, R1, E1, B>(f: (e: E) => STM<B, E1, R1>): <R, A>(self: STM<A, E, R>) => STM<B | A, E1, R1 | R>
  <R, A, E, R1, E1, B>(self: STM<A, E, R>, f: (e: E) => STM<B, E1, R1>): STM<A | B, E1, R | R1>
}
```
