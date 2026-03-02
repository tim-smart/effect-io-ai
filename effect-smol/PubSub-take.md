Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.take

Takes a single message from the subscription. If no messages are available,
this will suspend until a message becomes available.

**Example**

```ts
import { Effect, Fiber, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Start a fiber to take a message (will suspend)
    const takeFiber = yield* Effect.forkChild(
      PubSub.take(subscription)
    )

    // Publish a message
    yield* PubSub.publish(pubsub, "Hello")

    // The take will now complete
    const message = yield* Fiber.join(takeFiber)
    console.log("Received:", message) // "Hello"
  }))
})
```

**Signature**

```ts
declare const take: <A>(self: Subscription<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1032)

Since v4.0.0