# dropping

Creates a bounded queue with the dropping strategy. The queue will drop new
values if the queue is at capacity.

For best performance use capacities that are powers of two.

To import and use `dropping` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.dropping
```

**Signature**

```ts
export declare const dropping: <A>(requestedCapacity: number) => STM.STM<never, never, TQueue<A>>
```
