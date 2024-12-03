# size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

To import and use `size` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.size
```

**Signature**

```ts
export declare const size: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<number>
```
