Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.size

Returns the current number of messages retained by the `PubSub` for active
subscribers.

If the `PubSub` has been shut down, the returned effect succeeds with `0`.
The size is not a count of waiting subscribers or suspended publishers.

**Example** (Getting PubSub size)

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Initially empty
  const initialSize = yield* PubSub.size(pubsub)
  console.log("Initial size:", initialSize) // 0

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Publish some messages for the active subscription
    yield* PubSub.publish(pubsub, "msg1")
    yield* PubSub.publish(pubsub, "msg2")

    const afterPublish = yield* PubSub.size(pubsub)
    console.log("After publishing:", afterPublish) // 2

    yield* PubSub.takeAll(subscription)
  }))
})
```

**Signature**

```ts
declare const size: <A>(self: PubSub<A>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L602)

Since v2.0.0