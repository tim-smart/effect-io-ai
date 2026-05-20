Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.fail

Fails the queue with the specified error, discarding any buffered items.

**Details**

The queue transitions directly to done with `Cause.fail(error)`. Returns `false` if the queue was already closing or done.

**Example** (Failing queues)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, string>(10)

  // Fail the queue with an error
  const result = yield* TxQueue.fail(queue, "connection lost")
  console.log(result) // true
})
```

**Signature**

```ts
declare const fail: { <E>(error: E): <A>(self: TxEnqueue<A, E>) => Effect.Effect<boolean>; <A, E>(self: TxEnqueue<A, E>, error: E): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1161)

Since v4.0.0