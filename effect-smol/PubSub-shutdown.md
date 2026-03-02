Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

**Example**

```ts
import { Effect, Fiber, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(1)

  // Start a fiber that will be suspended waiting to publish
  const publisherFiber = yield* Effect.forkChild(
    Effect.gen(function*() {
      yield* PubSub.publish(pubsub, "msg1") // fills the buffer
      yield* PubSub.publish(pubsub, "msg2") // will suspend here
    })
  )

  // Shutdown the PubSub
  yield* PubSub.shutdown(pubsub)

  // The suspended publisher will be interrupted
  const result = yield* Fiber.await(publisherFiber)
  console.log("Publisher interrupted:", result._tag === "Failure")
})
```

**Signature**

```ts
declare const shutdown: <A>(self: PubSub<A>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L672)

Since v2.0.0