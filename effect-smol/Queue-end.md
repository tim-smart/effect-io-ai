Package: `effect`<br />
Module: `Queue`<br />

## Queue.end

Signal that the queue is complete. If the queue is already done, `false` is
returned.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)

  // Add some messages
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)

  // Signal completion - no more messages will be accepted
  const ended = yield* Queue.end(queue)
  console.log(ended) // true

  // Trying to offer more messages will return false
  const offerResult = yield* Queue.offer(queue, 3)
  console.log(offerResult) // false

  // But we can still take existing messages
  const message = yield* Queue.take(queue)
  console.log(message) // 1
})
```

**Signature**

```ts
declare const end: <A, E>(self: Enqueue<A, E | Done>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L829)

Since v4.0.0