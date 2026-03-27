Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.interrupt

Interrupts the queue, transitioning it to a closing state.

**Mutation behavior**: This function mutates the original TxQueue by marking
it for graceful closure. It does not return a new TxQueue reference.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1154)

Since v4.0.0