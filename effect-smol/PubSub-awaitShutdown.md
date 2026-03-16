Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.awaitShutdown

Waits until the queue is shutdown. The `Effect` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `Effect` will resume right away.

**Example**

```ts
import { Effect, Fiber, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Start a fiber that waits for shutdown
  const waiterFiber = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* PubSub.awaitShutdown(pubsub)
      console.log("PubSub has been shutdown!")
    })
  )

  // Do some work...
  yield* Effect.sleep("100 millis")

  // Shutdown the PubSub
  yield* PubSub.shutdown(pubsub)

  // The waiter will now complete
  yield* Fiber.join(waiterFiber)
})
```

**Signature**

```ts
declare const awaitShutdown: <A>(self: PubSub<A>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L768)

Since v2.0.0