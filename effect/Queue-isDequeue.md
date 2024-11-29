# isDequeue

Returns `true` if the specified value is a `Dequeue`, `false` otherwise.

To import and use `isDequeue` from the "Queue" module:

ts
import \* as Queue from "effect/Queue"
// Can be accessed like this
Queue.isDequeue
undefined

**Signature**

```ts
export declare const isDequeue: (u: unknown) => u is Dequeue<unknown>
```
