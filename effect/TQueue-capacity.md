# capacity

Returns the number of elements the queue can hold.

To import and use `capacity` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.capacity
undefined

**Signature**

```ts
export declare const capacity: <A>(self: TDequeue<A> | TEnqueue<A>) => number
```
