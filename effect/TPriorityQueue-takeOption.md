# takeOption

Takes a value from the queue, returning `None` if there is not a value in
the queue.

To import and use `takeOption` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.takeOption
```

**Signature**

```ts
export declare const takeOption: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, Option.Option<A>>
```
