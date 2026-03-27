Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.end

Ends a queue by signaling completion with a Done error.

This function provides a clean way to signal the end of a queue by calling
`failCause` with `Cause.Done`. This is a convenience function for
queues that are typed to accept `Cause.Done` in their error channel.
When a queue is ended, all subsequent operations (take, peek, etc.) will fail with
`Cause.Done`, propagating through the E-channel.

**Example**

```ts
import { Cause, Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, Cause.Done>(10)
  yield* TxQueue.offer(queue, 1)
  yield* TxQueue.offer(queue, 2)

  // Signal the end of the queue
  const result = yield* TxQueue.end(queue)
  console.log(result) // true

  // All operations will now fail with Done
  const takeResult = yield* Effect.flip(TxQueue.take(queue))
  console.log(Cause.isDone(takeResult)) // true

  const peekResult = yield* Effect.flip(TxQueue.peek(queue))
  console.log(Cause.isDone(peekResult)) // true
})
```

**Signature**

```ts
declare const end: <A, E>(self: TxEnqueue<A, E | Cause.Done>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1282)

Since v4.0.0