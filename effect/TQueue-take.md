# take

Takes the oldest value in the queue. If the queue is empty, this will return
a computation that resumes when an item has been added to the queue.

To import and use `take` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.take
```

**Signature**

```ts
export declare const take: <A>(self: TDequeue<A>) => STM.STM<A>
```
