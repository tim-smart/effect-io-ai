Package: `effect`<br />
Module: `Queue`<br />

## Queue.take

Take a single message from the queue, or wait for a message to be
available.

If the queue is done, it will fail with `Done`. If the
queue fails, the Effect will fail with the error.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<string, Cause.Done>(3)

  // Add some messages
  yield* Queue.offer(queue, "first")
  yield* Queue.offer(queue, "second")

  // Take messages one by one
  const msg1 = yield* Queue.take(queue)
  const msg2 = yield* Queue.take(queue)
  console.log(msg1, msg2) // "first", "second"

  // End the queue
  yield* Queue.end(queue)

  // Taking from ended queue fails with None
  const result = yield* Effect.match(Queue.take(queue), {
    onFailure: (error: Cause.Done) => true,
    onSuccess: (value: string) => false
  })
  console.log("Queue ended:", result) // true
})
```

**Signature**

```ts
declare const take: <A, E>(self: Dequeue<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1197)

Since v4.0.0