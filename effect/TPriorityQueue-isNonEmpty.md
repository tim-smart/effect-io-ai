# isNonEmpty

Checks whether the queue is not empty.

To import and use `isNonEmpty` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.isNonEmpty
```

**Signature**

```ts
export declare const isNonEmpty: <A>(self: TPriorityQueue<A>) => STM.STM<boolean>
```
