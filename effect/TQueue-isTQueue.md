# isTQueue

Returns `true` if the specified value is a `TQueue`, `false` otherwise.

To import and use `isTQueue` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.isTQueue
undefined

**Signature**

```ts
export declare const isTQueue: (u: unknown) => u is TQueue<unknown>
```
