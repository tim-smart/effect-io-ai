Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.poll

Tries to take an item from the queue without blocking.

**Example**

```ts
import { Effect, Option, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  // Poll returns Option.none if empty
  const maybe = yield* TxQueue.poll(queue)
  console.log(Option.isNone(maybe)) // true

  yield* TxQueue.offer(queue, 42)
  const item = yield* TxQueue.poll(queue)
  console.log(Option.getOrNull(item)) // 42
})
```

**Signature**

```ts
declare const poll: <A, E>(self: TxDequeue<A, E>) => Effect.Effect<Option.Option<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L744)

Since v4.0.0