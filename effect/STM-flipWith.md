# flipWith

Swaps the error/value parameters, applies the function `f` and flips the
parameters back

To import and use `flipWith` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.flipWith
```

**Signature**

```ts
export declare const flipWith: {
  <R, A, E, R2, A2, E2>(f: (stm: STM<R, A, E>) => STM<R2, A2, E2>): (self: STM<R, E, A>) => STM<R | R2, E | E2, A | A2>
  <R, A, E, R2, A2, E2>(self: STM<R, E, A>, f: (stm: STM<R, A, E>) => STM<R2, A2, E2>): STM<R | R2, E | E2, A | A2>
}
```
