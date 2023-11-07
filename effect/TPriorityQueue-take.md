# take

Takes a value from the queue, retrying until a value is in the queue.

To import and use `take` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.take
```

**Signature**

```ts
export declare const take: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, A>
```
