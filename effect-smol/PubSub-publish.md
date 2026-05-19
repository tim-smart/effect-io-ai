Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.publish

Attempts to publish a message synchronously without applying the PubSub
strategy's effectful surplus handling.

Returns `false` if the `PubSub` is shut down or the message cannot be
accepted immediately, for example when a bounded PubSub is full. Prefer
`publish` when backpressure or sliding behavior should be honored.

**Example** (Publishing a message)

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish a message
  const published = yield* PubSub.publish(pubsub, "Hello World")
  console.log("Message published:", published) // true

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    yield* PubSub.publish(pubsub, "Hello")
    const message = yield* PubSub.take(subscription)
    console.log("Received:", message) // "Hello"
  }))
})
```

**Signature**

```ts
declare const publish: { <A>(value: A): (self: PubSub<A>) => Effect.Effect<boolean>; <A>(self: PubSub<A>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L858)

Since v2.0.0