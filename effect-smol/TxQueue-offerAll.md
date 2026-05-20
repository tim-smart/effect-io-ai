Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.offerAll

Offers multiple items to the queue, returning the items that were not
accepted.

**Details**

Each item follows `offer` semantics: bounded queues retry while full, dropping queues reject new items when full, sliding queues evict old items to accept new items, and closing or done queues reject all items. This function mutates the original TxQueue by adding items according to the queue's strategy. It does not return a new TxQueue reference.

**Example** (Offering multiple values)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  // Offer multiple items - returns rejected items as array
  const rejected = yield* TxQueue.offerAll(queue, [1, 2, 3, 4, 5])
  console.log(rejected) // [] if all accepted
  console.log(rejected.length) // 0
})
```

**Signature**

```ts
declare const offerAll: { <A, E>(values: Iterable<A>): (self: TxEnqueue<A, E>) => Effect.Effect<Array<A>>; <A, E>(self: TxEnqueue<A, E>, values: Iterable<A>): Effect.Effect<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L613)

Since v2.0.0