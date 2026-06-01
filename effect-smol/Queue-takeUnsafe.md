Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeUnsafe

Attempts to take one message from the queue synchronously.

**When to use**

Use when polling queue internals must not suspend or register a waiting taker,
and `undefined` is an acceptable result for an empty queue.

**Details**

Returns an `Exit` for an immediately available message or for the queue's
terminal state. Returns `undefined` when no message is immediately available.
This operation does not wait or register a taker.

**Example** (Taking one value synchronously)

```ts
import { Effect, Queue } from "effect"

// Create a queue and use unsafe operations
const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(10)

  // Add some messages
  Queue.offerUnsafe(queue, 1)
  Queue.offerUnsafe(queue, 2)

  // Take a message synchronously
  const result1 = Queue.takeUnsafe(queue)
  console.log(result1) // Success(1) or Exit containing value 1

  const result2 = Queue.takeUnsafe(queue)
  console.log(result2) // Success(2)

  // No more messages - returns undefined
  const result3 = Queue.takeUnsafe(queue)
  console.log(result3) // undefined
})
```

**Signature**

```ts
declare const takeUnsafe: <A, E>(self: Dequeue<A, E>) => Exit<A, E> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1582)

Since v4.0.0