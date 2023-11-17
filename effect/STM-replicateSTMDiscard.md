# replicateSTMDiscard

Performs this transaction the specified number of times, discarding the
results.

To import and use `replicateSTMDiscard` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.replicateSTMDiscard
```

**Signature**

```ts
export declare const replicateSTMDiscard: {
  (n: number): <R, E, A>(self: STM<R, E, A>) => STM<R, E, void>
  <R, E, A>(self: STM<R, E, A>, n: number): STM<R, E, void>
}
```
