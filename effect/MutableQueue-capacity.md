# capacity

The **maximum** number of elements that a queue can hold.

**Note**: unbounded queues can still implement this interface with
`capacity = Infinity`.

To import and use `capacity` from the "MutableQueue" module:

```ts
import * as MutableQueue from "effect/MutableQueue"
// Can be accessed like this
MutableQueue.capacity
```

**Signature**

```ts
export declare const capacity: <A>(self: MutableQueue<A>) => number
```
