Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.unbounded

Creates a new unbounded `TxQueue` with unlimited capacity.

**Return behavior**: This function returns a new TxQueue reference with
unlimited capacity. No existing TxQueue instances are modified.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  // Create an unbounded queue (E defaults to never)
  const queue = yield* TxQueue.unbounded<string>()

  // Create an unbounded queue with error channel
  const faultTolerantQueue = yield* TxQueue.unbounded<string, Error>()

  // Can offer unlimited items
  yield* TxQueue.offer(queue, "hello")
  yield* TxQueue.offer(queue, "world")

  const size = yield* TxQueue.size(queue)
  console.log(size) // 2
})
```

**Signature**

```ts
declare const unbounded: <A = never, E = never>() => Effect.Effect<TxQueue<A, E>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L450)

Since v4.0.0