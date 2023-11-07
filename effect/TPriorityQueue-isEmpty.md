# isEmpty

Checks whether the queue is empty.

To import and use `isEmpty` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.isEmpty
```

**Signature**

```ts
export declare const isEmpty: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, boolean>
```
