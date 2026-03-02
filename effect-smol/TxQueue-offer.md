Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.offer

Offers an item to the queue.

**Mutation behavior**: This function mutates the original TxQueue by adding
the item according to the queue's strategy. It does not return a new TxQueue reference.

**Example**

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
declare const offer: { <A, E>(value: A): (self: TxEnqueue<A, E>) => Effect.Effect<boolean, never, Effect.Transaction>; <A, E>(self: TxEnqueue<A, E>, value: A): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L575)

Since v4.0.0