Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.remaining

Synchronously checks how many messages can be taken from a subscription.

Returns `Option.some(count)` while the subscription is active, including
replay-buffered messages, and `Option.none()` after the subscription has
been shut down. Prefer `remaining` in effectful code.

**Example** (Checking remaining messages)

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Publish some messages
    yield* PubSub.publishAll(pubsub, ["msg1", "msg2", "msg3"])

    // Check how many messages are available
    const count = yield* PubSub.remaining(subscription)
    console.log("Messages available:", count) // 3

    // Take one message
    yield* PubSub.take(subscription)

    const remaining = yield* PubSub.remaining(subscription)
    console.log("Messages remaining:", remaining) // 2
  }))
})
```

**Signature**

```ts
declare const remaining: <A>(self: Subscription<A>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1359)

Since v4.0.0