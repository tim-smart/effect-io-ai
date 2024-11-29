# runIntoQueue

Enqueues elements of this stream into a queue. Stream failure and ending
will also be signalled.

To import and use `runIntoQueue` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runIntoQueue
undefined

**Signature**

```ts
export declare const runIntoQueue: {
  <A, E>(queue: Queue.Enqueue<Take.Take<A, E>>): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, R>
  <A, E, R>(self: Stream<A, E, R>, queue: Queue.Enqueue<Take.Take<A, E>>): Effect.Effect<void, never, R>
}
```
