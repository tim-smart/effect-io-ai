# takeAll

Takes all values from the queue.

To import and use `takeAll` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.takeAll
```

**Signature**

```ts
export declare const takeAll: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, A[]>
```
