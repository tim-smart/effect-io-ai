Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.offerAll

Offers multiple items to the queue.

Returns an array of items that were rejected (not added to the queue).

**Mutation behavior**: This function mutates the original TxQueue by adding
items according to the queue's strategy. It does not return a new TxQueue reference.

**Example**

```ts
import { Chunk, Effect, TxQueue } from "effect"

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
declare const offerAll: { <A, E>(values: Iterable<A>): (self: TxEnqueue<A, E>) => Effect.Effect<Array<A>, never, Effect.Transaction>; <A, E>(self: TxEnqueue<A, E>, values: Iterable<A>): Effect.Effect<Array<A>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L642)

Since v4.0.0