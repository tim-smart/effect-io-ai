# fiberId

Returns the fiber id of the fiber committing the transaction.

To import and use `fiberId` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.fiberId
undefined

**Signature**

```ts
export declare const fiberId: STM<FiberId.FiberId, never, never>
```
