Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isFull

Returns `true` when the `PubSub` has reached its configured capacity.

For unbounded PubSubs this is normally `false`.

**Example** (Checking whether a PubSub is full)

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(2)

  // Initially not full
  const initiallyFull = yield* PubSub.isFull(pubsub)
  console.log("Initially full:", initiallyFull) // false

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Fill the PubSub for the active subscription
    yield* PubSub.publish(pubsub, "msg1")
    yield* PubSub.publish(pubsub, "msg2")

    const nowFull = yield* PubSub.isFull(pubsub)
    console.log("Now full:", nowFull) // true

    yield* PubSub.takeAll(subscription)
  }))
})
```

**Signature**

```ts
declare const isFull: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L670)

Since v2.0.0