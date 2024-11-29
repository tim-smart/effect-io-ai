# dieSync

Fails the transactional effect with the specified lazily evaluated defect.

To import and use `dieSync` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.dieSync
undefined

**Signature**

```ts
export declare const dieSync: (evaluate: LazyArg<unknown>) => STM<never>
```
