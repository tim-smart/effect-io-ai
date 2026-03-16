Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.takeBetween

Takes between the specified minimum and maximum number of messages from the subscription.
Will suspend if the minimum number is not immediately available.

**Example**

```ts
import { Effect, Fiber, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Start taking between 2 and 5 messages (will suspend)
    const takeFiber = yield* Effect.forkChild(
      PubSub.takeBetween(subscription, 2, 5)
    )

    // Publish 3 messages
    yield* PubSub.publishAll(pubsub, ["msg1", "msg2", "msg3"])

    // Now the take will complete with 3 messages
    const messages = yield* Fiber.join(takeFiber)
    console.log("Between 2-5:", messages) // ["msg1", "msg2", "msg3"]
  }))
})
```

**Signature**

```ts
declare const takeBetween: { (min: number, max: number): <A>(self: Subscription<A>) => Effect.Effect<Array<A>>; <A>(self: Subscription<A>, min: number, max: number): Effect.Effect<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1211)

Since v4.0.0