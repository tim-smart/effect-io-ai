# bounded

Creates a bounded queue with the back pressure strategy. The queue will
retain values until they have been taken, applying back pressure to
offerors if the queue is at capacity.

For best performance use capacities that are powers of two.

To import and use `bounded` from the "TQueue" module:

```ts
import * as TQueue from 'effect/TQueue'

// Can be accessed like this
TQueue.bounded
```

**Signature**

```ts
export declare const bounded: <A>(requestedCapacity: number) => STM.STM<never, never, TQueue<A>>
```
