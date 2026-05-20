Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.unbounded

Creates an unbounded `PubSub`.

**Example** (Creating an unbounded PubSub)

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  // Create unbounded PubSub
  const pubsub = yield* PubSub.unbounded<string>()

  // With replay buffer for late subscribers
  const pubsubWithReplay = yield* PubSub.unbounded<string>({
    replay: 10
  })

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Can publish unlimited messages
    for (let i = 0; i < 3; i++) {
      yield* PubSub.publish(pubsub, `message-${i}`)
    }

    const message = yield* PubSub.take(subscription)
    console.log("First message:", message) // "message-0"
  }))
})
```

**Signature**

```ts
declare const unbounded: <A>(options?: { readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L492)

Since v2.0.0