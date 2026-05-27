Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.offer

Offers an item to the queue and returns whether it was accepted.

**Details**

Open unbounded queues always accept; open bounded queues retry while full; dropping queues return `false` when full; sliding queues evict the oldest item when full. Closing or done queues return `false`. This function mutates the original TxQueue by adding the item according to the queue's strategy. It does not return a new TxQueue reference.

**Example** (Offering a value)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  // Offer an item - returns true if accepted
  const accepted = yield* TxQueue.offer(queue, 42)
  console.log(accepted) // true
})
```

**Signature**

```ts
declare const offer: { <A, E>(value: A): (self: TxEnqueue<A, E>) => Effect.Effect<boolean>; <A, E>(self: TxEnqueue<A, E>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L586)

Since v2.0.0