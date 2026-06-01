Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeN

Takes up to `n` messages from the queue.

**Details**

The operation may wait until enough messages are available to satisfy the
queue's batching rules. If `n` is less than or equal to zero, it succeeds
with an empty array. If the queue completes or fails before messages can be
taken, the effect fails with the queue's terminal error.

**Example** (Taking a fixed number of values)

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)

  // Add several messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5, 6, 7])

  // Take exactly 3 messages
  const first3 = yield* Queue.takeN(queue, 3)
  console.log(first3) // [1, 2, 3]

  // Take exactly 2 more messages
  const next2 = yield* Queue.takeN(queue, 2)
  console.log(next2) // [4, 5]

  // Take remaining messages
  const remaining = yield* Queue.takeN(queue, 2)
  console.log(remaining) // [6, 7]
})
```

**Signature**

```ts
declare const takeN: <A, E>(self: Dequeue<A, E>, n: number) => Effect<Array<A>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1361)

Since v2.0.0