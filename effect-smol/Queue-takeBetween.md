Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeBetween

Take a variable number of messages from the queue, between specified min and max.
It will only take up to the capacity of the queue.

If the queue is done, the `done` flag will be `true`. If the queue
fails, the Effect will fail with the error.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(10)

  // Add several messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5, 6, 7, 8])

  // Take between 2 and 5 messages
  const batch1 = yield* Queue.takeBetween(queue, 2, 5)
  console.log(batch1) // [1, 2, 3, 4, 5] - took 5 (up to max)

  // Take between 1 and 10 messages (but only 3 remain)
  const batch2 = yield* Queue.takeBetween(queue, 1, 10)
  console.log(batch2) // [6, 7, 8] - took 3 (all remaining)

  // No more messages available, will wait or return done
  // const batch3 = yield* Queue.takeBetween(queue, 1, 3)
})
```

**Signature**

```ts
declare const takeBetween: <A, E>(self: Dequeue<A, E>, min: number, max: number) => Effect<Array<A>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1150)

Since v4.0.0