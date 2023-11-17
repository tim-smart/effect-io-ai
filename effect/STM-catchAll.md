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
  <E, R1, E1, B>(f: (e: E) => STM<R1, E1, B>): <R, A>(self: STM<R, E, A>) => STM<R1 | R, E1, B | A>
  <R, A, E, R1, E1, B>(self: STM<R, E, A>, f: (e: E) => STM<R1, E1, B>): STM<R | R1, E1, A | B>
}
```
