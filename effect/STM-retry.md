# retry

Abort and retry the whole transaction when any of the underlying
transactional variables have changed.

To import and use `retry` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.retry
undefined

**Signature**

```ts
export declare const retry: STM<never, never, never>
```
