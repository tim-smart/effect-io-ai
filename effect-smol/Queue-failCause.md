Package: `effect`<br />
Module: `Queue`<br />

## Queue.failCause

Fail the queue with a cause. If the queue is already done, `false` is
returned.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, string>(10)

  // Add some messages
  yield* Queue.offer(queue, 1)

  // Create a cause and fail the queue
  const cause = Cause.fail("Queue processing failed")
  const failed = yield* Queue.failCause(queue, cause)
  console.log(failed) // true

  // The queue is now in failed state with the specified cause
})
```

**Signature**

```ts
declare const failCause: { <E>(cause: Cause<E>): <A>(self: Enqueue<A, E>) => Effect<boolean>; <A, E>(self: Enqueue<A, E>, cause: Cause<E>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L741)

Since v4.0.0