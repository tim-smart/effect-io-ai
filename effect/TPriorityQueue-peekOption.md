# peekOption

Peeks at the first value in the queue without removing it, returning `None`
if there is not a value in the queue.

To import and use `peekOption` from the "TPriorityQueue" module:

```ts
import * as TPriorityQueue from 'effect/TPriorityQueue'

// Can be accessed like this
TPriorityQueue.peekOption
```

**Signature**

```ts
export declare const peekOption: <A>(self: TPriorityQueue<A>) => STM.STM<never, never, Option.Option<A>>
```
