Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeBetween

Takes between `min` and `max` messages from the queue.

**Details**

The operation waits when fewer than the required minimum messages are
available. It returns at most `max` messages. If the queue completes or fails
before the minimum can be satisfied, the effect fails with the queue's
terminal error.

**Example** (Taking a bounded batch of values)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1253)

Since v2.0.0