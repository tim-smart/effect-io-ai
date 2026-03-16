Package: `effect`<br />
Module: `Queue`<br />

## Queue.fail

Fail the queue with an error. If the queue is already done, `false` is
returned.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, string>(10)

  // Add some messages
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)

  // Fail the queue with an error
  const failed = yield* Queue.fail(queue, "Something went wrong")
  console.log(failed) // true

  // Subsequent operations will reflect the failure
  // Taking from failed queue will fail with the error
})
```

**Signature**

```ts
declare const fail: <A, E>(self: Enqueue<A, E>, error: E) => Effect<boolean, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L713)

Since v4.0.0