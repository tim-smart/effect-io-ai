# ensuring

Executes the specified finalization transaction whether or not this effect
succeeds. Note that as with all STM transactions, if the full transaction
fails, everything will be rolled back.

To import and use `ensuring` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.ensuring
undefined

**Signature**

```ts
export declare const ensuring: {
  <R1, B>(finalizer: STM<B, never, R1>): <A, E, R>(self: STM<A, E, R>) => STM<A, E, R1 | R>
  <A, E, R, R1, B>(self: STM<A, E, R>, finalizer: STM<B, never, R1>): STM<A, E, R | R1>
}
```
