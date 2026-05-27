Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.end

Ends a queue by signaling completion with a `Cause.Done` error.

**Details**

This is a convenience wrapper around `failCause` for queues whose error channel can contain `Cause.Done`. If buffered items remain, the queue enters the closing state and those items may still be consumed before later `take` or `peek` operations fail with `Cause.Done`.

**Example** (Ending queues)

```ts
import { Cause, Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, Cause.Done>(10)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1304)

Since v4.0.0