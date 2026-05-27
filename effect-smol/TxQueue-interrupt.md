Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.interrupt

Gracefully interrupts the queue with the current fiber's interruption cause.

**Details**

If the queue still contains items, it enters the closing state so buffered items can be drained before consumers observe the interruption. If it is empty, it transitions directly to done. Returns `false` if the queue was already closing or done.

**Example** (Interrupting queues)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offer(queue, 42)

  // Interrupt gracefully - allows remaining items to be consumed
  const result = yield* TxQueue.interrupt(queue)
  console.log(result) // true
})
```

**Signature**

```ts
declare const interrupt: <A, E>(self: TxEnqueue<A, E>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1175)

Since v4.0.0