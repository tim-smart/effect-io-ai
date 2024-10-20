# takeAll

Takes all the values in the queue and returns the values. If the queue is
empty returns an empty collection.

To import and use `takeAll` from the "Queue" module:

```ts
import * as Queue from "effect/Queue"
// Can be accessed like this
Queue.takeAll
```

**Signature**

```ts
export declare const takeAll: <A>(self: Dequeue<A>) => Effect.Effect<Chunk.Chunk<A>>
```
