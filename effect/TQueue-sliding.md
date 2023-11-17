# sliding

Creates a bounded queue with the sliding strategy. The queue will add new
values and drop old values if the queue is at capacity.

For best performance use capacities that are powers of two.

To import and use `sliding` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.sliding
```

**Signature**

```ts
export declare const sliding: <A>(requestedCapacity: number) => STM.STM<never, never, TQueue<A>>
```
