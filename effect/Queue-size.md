# size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

To import and use `size` from the "Queue" module:

ts
import \* as Queue from "effect/Queue"
// Can be accessed like this
Queue.size
undefined

**Signature**

```ts
export declare const size: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<number>
```
