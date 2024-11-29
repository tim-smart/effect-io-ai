# catchSome

Recovers from some or all of the error cases.

To import and use `catchSome` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.catchSome
undefined

**Signature**

```ts
export declare const catchSome: {
  <E, A2, E2, R2>(
    pf: (error: E) => Option.Option<STM<A2, E2, R2>>
  ): <A, R>(self: STM<A, E, R>) => STM<A2 | A, E | E2, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: STM<A, E, R>,
    pf: (error: E) => Option.Option<STM<A2, E2, R2>>
  ): STM<A | A2, E | E2, R | R2>
}
```
