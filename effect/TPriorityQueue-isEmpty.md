# isEmpty

Checks whether the queue is empty.

To import and use `isEmpty` from the "TPriorityQueue" module:

ts
import \* as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.isEmpty
undefined

**Signature**

```ts
export declare const isEmpty: <A>(self: TPriorityQueue<A>) => STM.STM<boolean>
```
