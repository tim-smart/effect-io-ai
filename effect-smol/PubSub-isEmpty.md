Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isEmpty

Returns `true` if the `Pubsub` contains zero elements, `false` otherwise.

**Example** (Checking whether a PubSub is empty)

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Initially empty
  const initiallyEmpty = yield* PubSub.isEmpty(pubsub)
  console.log("Initially empty:", initiallyEmpty) // true

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Publish a message for the active subscription
    yield* PubSub.publish(pubsub, "Hello")

    const nowEmpty = yield* PubSub.isEmpty(pubsub)
    console.log("Now empty:", nowEmpty) // false

    yield* PubSub.take(subscription)
  }))
})
```

**Signature**

```ts
declare const isEmpty: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L765)

Since v2.0.0