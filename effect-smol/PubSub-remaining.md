Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.remaining

Returns the number of messages currently available in the subscription.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish some messages
  yield* PubSub.publishAll(pubsub, ["msg1", "msg2", "msg3"])

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1294)

Since v4.0.0