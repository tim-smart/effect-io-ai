# replicateSTMDiscard

Performs this transaction the specified number of times, discarding the
results.

To import and use `replicateSTMDiscard` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.replicateSTMDiscard
undefined

**Signature**

```ts
export declare const replicateSTMDiscard: {
  (n: number): <A, E, R>(self: STM<A, E, R>) => STM<void, E, R>
  <A, E, R>(self: STM<A, E, R>, n: number): STM<void, E, R>
}
```
