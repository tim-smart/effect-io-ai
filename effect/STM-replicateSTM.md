# replicateSTM

Performs this transaction the specified number of times and collects the
results.

To import and use `replicateSTM` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.replicateSTM
```

**Signature**

```ts
export declare const replicateSTM: {
  (n: number): <A, E, R>(self: STM<A, E, R>) => STM<A[], E, R>
  <A, E, R>(self: STM<A, E, R>, n: number): STM<A[], E, R>
}
```
