Package: `effect`<br />
Module: `Stream`<br />

## Stream.runIntoQueue

Runs the stream, offering each element to the provided queue and ending it
with `Cause.Done` when the stream completes.

**Example**

```ts
import { Cause, Effect, Queue, Stream } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(4)

  yield* Effect.forkChild(
    Stream.runIntoQueue(Stream.fromIterable([1, 2, 3]), queue)
  )

  const values = [
    yield* Queue.take(queue),
    yield* Queue.take(queue),
    yield* Queue.take(queue)
  ]
  const done = yield* Effect.flip(Queue.take(queue))

  return { values, done }
})
```

**Signature**

```ts
declare const runIntoQueue: { <A, E>(queue: Queue.Queue<A, E | Cause.Done>): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, R>; <A, E, R>(self: Stream<A, E, R>, queue: Queue.Queue<A, E | Cause.Done>): Effect.Effect<void, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10903)

Since v2.0.0