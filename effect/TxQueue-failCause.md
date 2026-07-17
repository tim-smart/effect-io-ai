Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.failCause

Completes the queue with the specified cause.

**Details**

If the queue is empty, it transitions directly to done. If it still contains items, it enters the closing state so buffered items can be drained before the cause is observed. Returns `false` if the queue was already closing or done.

**Example** (Failing queues with causes)

```ts
import { Cause, Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  // Complete with specific cause
  const cause = Cause.interrupt()
  const result = yield* TxQueue.failCause(queue, cause)
  console.log(result) // true
})
```

**Signature**

```ts
declare const failCause: { <E>(cause: Cause.Cause<E>): <A>(self: TxEnqueue<A, E>) => Effect.Effect<boolean>; <A, E>(self: TxEnqueue<A, E>, cause: Cause.Cause<E>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxQueue.ts#L1208)

Since v4.0.0