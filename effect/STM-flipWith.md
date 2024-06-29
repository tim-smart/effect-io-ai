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
  <E, A, R, E2, A2, R2>(f: (stm: STM<E, A, R>) => STM<E2, A2, R2>): (self: STM<A, E, R>) => STM<A | A2, E | E2, R | R2>
  <A, E, R, E2, A2, R2>(self: STM<A, E, R>, f: (stm: STM<E, A, R>) => STM<E2, A2, R2>): STM<A | A2, E | E2, R | R2>
}
```
