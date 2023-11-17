# size

Returns the size of the queue.

To import and use `size` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.size
```

**Signature**

```ts
export declare const size: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, number>
```
