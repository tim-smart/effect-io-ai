# contextWith

Accesses the environment of the transaction to perform a transaction.

To import and use `contextWith` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.contextWith
```

**Signature**

```ts
export declare const contextWith: <R0, R>(f: (environment: Context.Context<R0>) => R) => STM<R, never, R0>
```
