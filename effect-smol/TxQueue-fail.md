Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.fail

Fails the queue with the specified error.

**Mutation behavior**: This function mutates the original TxQueue by marking
it as failed. It does not return a new TxQueue reference.

**Example**

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
declare const fail: { <E>(error: E): <A>(self: TxEnqueue<A, E>) => Effect.Effect<boolean, never, Effect.Transaction>; <A, E>(self: TxEnqueue<A, E>, error: E): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1184)

Since v4.0.0