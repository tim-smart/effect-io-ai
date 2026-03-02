Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.subscribe

Subscribes to receive messages from the `PubSub`. The resulting subscription can
be evaluated multiple times within the scope to take a message from the `PubSub`
each time.

**Example**

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish some messages
  yield* PubSub.publish(pubsub, "Hello")
  yield* PubSub.publish(pubsub, "World")

  // Subscribe within a scope for automatic cleanup
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Take messages one by one
    const msg1 = yield* PubSub.take(subscription)
    const msg2 = yield* PubSub.take(subscription)
    console.log(msg1, msg2) // "Hello", "World"

    // Subscription is automatically cleaned up when scope exits
  }))

  // Multiple subscribers can receive the same messages
  yield* PubSub.publish(pubsub, "Broadcast")

  yield* Effect.scoped(Effect.gen(function*() {
    const sub1 = yield* PubSub.subscribe(pubsub)
    const sub2 = yield* PubSub.subscribe(pubsub)

    const [msg1, msg2] = yield* Effect.all([
      PubSub.take(sub1),
      PubSub.take(sub2)
    ])
    console.log("Both received:", msg1, msg2) // "Broadcast", "Broadcast"
  }))
})
```

**Signature**

```ts
declare const subscribe: <A>(self: PubSub<A>) => Effect.Effect<Subscription<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L972)

Since v2.0.0