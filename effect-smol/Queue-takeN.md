Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeN

Take a specified number of messages from the queue. It will only take
up to the capacity of the queue.

If the queue is done, the `done` flag will be `true`. If the queue
fails, the Effect will fail with the error.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(10)

  // Add several messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5, 6, 7])

  // Take exactly 3 messages
  const first3 = yield* Queue.takeN(queue, 3)
  console.log(first3) // [1, 2, 3]

  // Take exactly 2 more messages
  const next2 = yield* Queue.takeN(queue, 2)
  console.log(next2) // [4, 5]

  // Take remaining messages (will take 2, even though we asked for 5)
  const remaining = yield* Queue.takeN(queue, 5)
  console.log(remaining) // [6, 7]
})
```

**Signature**

```ts
declare const takeN: <A, E>(self: Dequeue<A, E>, n: number) => Effect<Array<A>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1109)

Since v4.0.0