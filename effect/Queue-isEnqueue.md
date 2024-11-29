# isEnqueue

Returns `true` if the specified value is a `Enqueue`, `false` otherwise.

To import and use `isEnqueue` from the "Queue" module:

ts
import \* as Queue from "effect/Queue"
// Can be accessed like this
Queue.isEnqueue
undefined

**Signature**

```ts
export declare const isEnqueue: (u: unknown) => u is Enqueue<unknown>
```
