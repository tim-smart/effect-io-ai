# takeUpTo

Takes up to max number of values from the queue.

To import and use `takeUpTo` from the "Queue" module:

```ts
import * as Queue from "effect/Queue"
// Can be accessed like this
Queue.takeUpTo
```

**Signature**

```ts
export declare const takeUpTo: {
  (max: number): <A>(self: Dequeue<A>) => Effect.Effect<never, never, Chunk.Chunk<A>>
  <A>(self: Dequeue<A>, max: number): Effect.Effect<never, never, Chunk.Chunk<A>>
}
```
