Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.failCause

Completes the queue with the specified exit value.

**Mutation behavior**: This function mutates the original TxQueue by marking
it as completed. It does not return a new TxQueue reference.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1223)

Since v4.0.0