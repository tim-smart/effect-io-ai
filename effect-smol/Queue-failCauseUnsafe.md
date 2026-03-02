Package: `effect`<br />
Module: `Queue`<br />

## Queue.failCauseUnsafe

Fail the queue with a cause synchronously. If the queue is already done, `false` is
returned.

This is an unsafe operation that directly modifies the queue without Effect wrapping.

**Example**

```ts
import { Effect, Cause } from "effect"
import { Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, string>(10)

  // Add some messages
  Queue.offerUnsafe(queue, 1)

  // Create a cause and fail the queue synchronously
  const cause = Cause.fail("Processing error")
  const failed = Queue.failCauseUnsafe(queue, cause)
  console.log(failed) // true

  // The queue is now in failed state
  console.log(queue.state._tag) // "Done"
})
```

**Signature**

```ts
declare const failCauseUnsafe: <A, E>(self: Enqueue<A, E>, cause: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L780)

Since v4.0.0