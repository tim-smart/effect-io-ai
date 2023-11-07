# takeN

Takes the specified number of elements from the queue. If there are fewer
than the specified number of elements available, it suspends until they
become available.

To import and use `takeN` from the "Queue" module:

```ts
import * as Queue from 'effect/Queue'

// Can be accessed like this
Queue.takeN
```

**Signature**

```ts
export declare const takeN: {
  (n: number): <A>(self: Dequeue<A>) => Effect.Effect<never, never, Chunk.Chunk<A>>
  <A>(self: Dequeue<A>, n: number): Effect.Effect<never, never, Chunk.Chunk<A>>
}
```
