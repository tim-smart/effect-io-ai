Package: `effect`<br />
Module: `Queue`<br />

## Queue.size

Check the size of the queue.

If the queue is complete, it will return `None`.

**Example**

```ts
import { Cause, Effect, Option, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)

  // Check size of empty queue
  const size1 = yield* Queue.size(queue)
  console.log(size1) // 0

  // Add some messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5])

  // Check size after adding messages
  const size2 = yield* Queue.size(queue)
  console.log(size2) // 5

  // End the queue
  yield* Queue.end(queue)

  // Size of ended queue is 0
  const size3 = yield* Queue.size(queue)
  console.log(size3) // 0
})
```

**Signature**

```ts
declare const size: <A, E>(self: Dequeue<A, E>) => Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1390)

Since v4.0.0