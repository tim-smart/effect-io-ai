Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.publish

Publishes a message to the `PubSub` as an `Effect`, returning whether the
message was accepted.

**When to use**

Use when you need to publish from effectful code and let the configured
PubSub strategy handle surplus messages.

**Details**

The effect succeeds with `false` if the `PubSub` is shut down. If the message
cannot be accepted immediately, the configured strategy decides how surplus
messages are handled.

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

**See**

- `publishUnsafe` for a synchronous non-blocking attempt that does not run effectful surplus handling

**Signature**

```ts
declare const publish: { <A>(value: A): (self: PubSub<A>) => Effect.Effect<boolean>; <A>(self: PubSub<A>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L905)

Since v2.0.0