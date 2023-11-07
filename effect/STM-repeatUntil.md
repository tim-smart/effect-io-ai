# repeatUntil

Repeats this `STM` effect until its result satisfies the specified
predicate.

**WARNING**: `repeatUntil` uses a busy loop to repeat the effect and will
consume a thread until it completes (it cannot yield). This is because STM
describes a single atomic transaction which must either complete, retry or
fail a transaction before yielding back to the Effect runtime.

- Use `retryUntil` instead if you don't need to maintain transaction
  state for repeats.
- Ensure repeating the STM effect will eventually satisfy the predicate.

To import and use `repeatUntil` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.repeatUntil
```

**Signature**

```ts
export declare const repeatUntil: {
  <A>(predicate: Predicate<A>): <R, E>(self: STM<R, E, A>) => STM<R, E, A>
  <R, E, A>(self: STM<R, E, A>, predicate: Predicate<A>): STM<R, E, A>
}
```
