# peek

Peeks at the first value in the queue without removing it, retrying until a
value is in the queue.

To import and use `peek` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from "effect/TPriorityQueue"
// Can be accessed like this
TPriorityQueue.peek
```

**Signature**

```ts
export declare const peek: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, A>
```
