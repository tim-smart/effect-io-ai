# contextWithSTM

Accesses the environment of the transaction to perform a transaction.

To import and use `contextWithSTM` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.contextWithSTM
```

**Signature**

```ts
export declare const contextWithSTM: <R0, R, E, A>(
  f: (environment: Context.Context<R0>) => STM<R, E, A>
) => STM<R0 | R, E, A>
```
