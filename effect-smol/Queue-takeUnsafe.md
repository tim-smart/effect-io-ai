Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeUnsafe

Take a single message from the queue synchronously, or wait for a message to be
available.

If the queue is done, it will fail with `Done`. If the
queue fails, the Effect will fail with the error.
Returns `undefined` if no message is immediately available.

This is an unsafe operation that directly accesses the queue without Effect wrapping.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1313)

Since v4.0.0