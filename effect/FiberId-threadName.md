# threadName

Creates a string representing the name of the current thread of execution
represented by the specified `FiberId`.

To import and use `threadName` from the "FiberId" module:

ts
import \* as FiberId from "effect/FiberId"
// Can be accessed like this
FiberId.threadName
undefined

**Signature**

```ts
export declare const threadName: (self: FiberId) => string
```
