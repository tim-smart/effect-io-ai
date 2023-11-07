# ensuring

Executes the specified finalization transaction whether or not this effect
succeeds. Note that as with all STM transactions, if the full transaction
fails, everything will be rolled back.

To import and use `ensuring` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.ensuring
```

**Signature**

```ts
export declare const ensuring: {
  <R1, B>(finalizer: STM<R1, never, B>): <R, E, A>(self: STM<R, E, A>) => STM<R1 | R, E, A>
  <R, E, A, R1, B>(self: STM<R, E, A>, finalizer: STM<R1, never, B>): STM<R | R1, E, A>
}
```
