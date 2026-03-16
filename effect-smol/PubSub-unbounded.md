Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.unbounded

Creates an unbounded `PubSub`.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create unbounded PubSub
  const pubsub = yield* PubSub.unbounded<string>()

  // With replay buffer for late subscribers
  const pubsubWithReplay = yield* PubSub.unbounded<string>({
    replay: 10
  })

  // Can publish unlimited messages
  for (let i = 0; i < 1000; i++) {
    yield* PubSub.publish(pubsub, `message-${i}`)
  }

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)
    const message = yield* PubSub.take(subscription)
    console.log("First message:", message)
  }))
})
```

**Signature**

```ts
declare const unbounded: <A>(options?: { readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L461)

Since v2.0.0