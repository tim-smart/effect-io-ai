# isTEnqueue

Returns `true` if the specified value is a `TEnqueue`, `false` otherwise.

To import and use `isTEnqueue` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.isTEnqueue
undefined

**Signature**

```ts
export declare const isTEnqueue: (u: unknown) => u is TEnqueue<unknown>
```
