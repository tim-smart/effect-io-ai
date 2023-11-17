# take

Takes the oldest value in the queue. If the queue is empty, this will return
a computation that resumes when an item has been added to the queue.

To import and use `take` from the "Queue" module:

```ts
import * as Queue from "effect/Queue"
// Can be accessed like this
Queue.take
```

**Signature**

```ts
export declare const take: <A>(self: Dequeue<A>) => Effect.Effect<never, never, A>
```
