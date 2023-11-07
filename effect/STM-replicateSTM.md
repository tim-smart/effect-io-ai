# replicateSTM

Performs this transaction the specified number of times and collects the
results.

To import and use `replicateSTM` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.replicateSTM
```

**Signature**

```ts
export declare const replicateSTM: {
  (n: number): <R, E, A>(self: STM<R, E, A>) => STM<R, E, A[]>
  <R, E, A>(self: STM<R, E, A>, n: number): STM<R, E, A[]>
}
```
