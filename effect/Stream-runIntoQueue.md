# runIntoQueue

Enqueues elements of this stream into a queue. Stream failure and ending
will also be signalled.

To import and use `runIntoQueue` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runIntoQueue
```

**Signature**

```ts
export declare const runIntoQueue: {
  <E, A>(queue: Queue.Enqueue<Take.Take<E, A>>): <R>(self: Stream<R, E, A>) => Effect.Effect<R, never, void>
  <R, E, A>(self: Stream<R, E, A>, queue: Queue.Enqueue<Take.Take<E, A>>): Effect.Effect<R, never, void>
}
```
