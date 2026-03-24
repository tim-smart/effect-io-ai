Package: `effect`<br />
Module: `Queue`<br />

## Queue.into

Run an `Effect` into a `Queue`, where success ends the queue and failure
fails the queue.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)

  // Create an effect that succeeds
  const dataProcessing = Effect.gen(function*() {
    yield* Effect.sleep("100 millis")
    return "Processing completed successfully"
  })

  // Pipe the effect into the queue
  // If dataProcessing succeeds, queue ends successfully
  // If dataProcessing fails, queue fails with the error
  const effectIntoQueue = Queue.into(queue)(dataProcessing)

  const wasCompleted = yield* effectIntoQueue
  console.log("Queue operation completed:", wasCompleted) // true

  // Queue state now reflects the effect's outcome
  console.log("Queue state:", queue.state._tag) // "Done"
})
```

**Signature**

```ts
declare const into: { <A, E>(self: Enqueue<A, E | Done>): <AX, EX extends E, RX>(effect: Effect<AX, EX, RX>) => Effect<boolean, never, RX>; <AX, E, EX extends E, RX, A>(effect: Effect<AX, EX, RX>, self: Enqueue<A, E | Done>): Effect<boolean, never, RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1516)

Since v3.8.0