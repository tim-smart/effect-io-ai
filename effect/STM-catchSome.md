# catchSome

Recovers from some or all of the error cases.

To import and use `catchSome` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.catchSome
```

**Signature**

```ts
export declare const catchSome: {
  <E, R2, E2, A2>(
    pf: (error: E) => Option.Option<STM<A2, E2, R2>>
  ): <R, A>(self: STM<A, E, R>) => STM<A2 | A, E | E2, R2 | R>
  <R, A, E, R2, E2, A2>(
    self: STM<A, E, R>,
    pf: (error: E) => Option.Option<STM<A2, E2, R2>>
  ): STM<A | A2, E | E2, R | R2>
}
```
