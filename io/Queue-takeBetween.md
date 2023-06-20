# takeBetween

Takes a number of elements from the queue between the specified minimum and
maximum. If there are fewer than the minimum number of elements available,
suspends until at least the minimum number of elements have been collected.

To import and use `takeBetween` from the "Queue" module:

```ts
import * as Queue from '@effect/io/Queue'

// Can be accessed like this
Queue.takeBetween
```

**Signature**

```ts
export declare const takeBetween: {
  (min: number, max: number): <A>(self: Dequeue<A>) => Effect.Effect<never, never, Chunk.Chunk<A>>
  <A>(self: Dequeue<A>, min: number, max: number): Effect.Effect<never, never, Chunk.Chunk<A>>
}
```
