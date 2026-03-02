Package: `effect`<br />
Module: `Queue`<br />

## Queue.interrupt

Interrupts the queue gracefully, transitioning it to a closing state.

This operation stops accepting new offers but allows existing messages to be consumed.
Once all messages are drained, the queue transitions to the Done state with an interrupt cause.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(10)

  // Add some messages
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)

  // Interrupt gracefully - no more offers accepted, but messages can be consumed
  const interrupted = yield* Queue.interrupt(queue)
  console.log(interrupted) // true

  // Trying to offer more messages will return false
  const offerResult = yield* Queue.offer(queue, 3)
  console.log(offerResult) // false

  // But we can still take existing messages
  const message1 = yield* Queue.take(queue)
  console.log(message1) // 1

  const message2 = yield* Queue.take(queue)
  console.log(message2) // 2

  // After all messages are consumed, queue is done
  const isDone = queue.state._tag === "Done"
  console.log(isDone) // true
})
```

**Signature**

```ts
declare const interrupt: <A, E>(self: Enqueue<A, E>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L904)

Since v4.0.0