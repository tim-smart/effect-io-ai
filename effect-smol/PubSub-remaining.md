Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.remaining

Returns the number of messages currently available in the subscription as an
`Effect`.

**When to use**

Use when checking a subscription from effectful code and shutdown should
interrupt the effect.

**Details**

The count includes replay-buffered messages. If the subscription has been
shut down, the effect interrupts.

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

**See**

- `remainingUnsafe` for a synchronous check that reports shutdown as `Option.none()`

**Signature**

```ts
declare const remaining: <A>(self: Subscription<A>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1466)

Since v4.0.0