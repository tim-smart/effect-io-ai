Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.takeAll

Takes all available messages from the subscription, suspending if no items
are available.

**Example**

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish multiple messages
  yield* PubSub.publishAll(pubsub, ["msg1", "msg2", "msg3"])

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Take all available messages at once
    const allMessages = yield* PubSub.takeAll(subscription)
    console.log("All messages:", allMessages) // ["msg1", "msg2", "msg3"]
  }))
})
```

**Signature**

```ts
declare const takeAll: <A>(self: Subscription<A>) => Effect.Effect<Arr.NonEmptyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1079)

Since v4.0.0