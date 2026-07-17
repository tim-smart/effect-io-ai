Package: `effect`<br />
Module: `Queue`<br />

## Queue.fail

Fails the queue with an error. If the queue is already done, `false` is
returned.

**Example** (Failing queues with an error)

```ts
import { Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, string>(10)

  // Fail the queue with an error
  const failed = yield* Queue.fail(queue, "Something went wrong")
  console.log(failed) // true

  // Taking from the failed queue fails with the error
  const error = yield* Effect.flip(Queue.take(queue))
  console.log(error) // "Something went wrong"
})
```

**Signature**

```ts
declare const fail: <A, E>(self: Enqueue<A, E>, error: E) => Effect<boolean, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L854)

Since v4.0.0