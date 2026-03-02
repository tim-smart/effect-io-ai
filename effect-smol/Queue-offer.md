Package: `effect`<br />
Module: `Queue`<br />

## Queue.offer

Add a message to the queue. Returns `false` if the queue is done.

For bounded queues, this operation may suspend if the queue is at capacity,
depending on the backpressure strategy. For dropping/sliding queues, it may
return false or succeed immediately by dropping/sliding existing messages.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(3)

  // Successfully add messages to queue
  const success1 = yield* Queue.offer(queue, 1)
  const success2 = yield* Queue.offer(queue, 2)
  console.log(success1, success2) // true, true

  // Queue state
  const size = yield* Queue.size(queue)
  console.log(size) // 2
})
```

**Signature**

```ts
declare const offer: <A, E>(self: Enqueue<A, E>, message: Types.NoInfer<A>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L513)

Since v4.0.0