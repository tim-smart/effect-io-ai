# dieMessage

Kills the fiber running the effect with a `Cause.RuntimeException` that
contains the specified message.

To import and use `dieMessage` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.dieMessage
```

**Signature**

```ts
export declare const dieMessage: (message: string) => STM<never, never, never>
```
