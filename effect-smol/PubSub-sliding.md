Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.sliding

Creates a bounded `PubSub` with the sliding strategy. The `PubSub` will add new
messages and drop old messages if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create sliding PubSub that evicts old messages when full
  const pubsub = yield* PubSub.sliding<string>(3)

  // With replay buffer
  const pubsubWithReplay = yield* PubSub.sliding<string>({
    capacity: 3,
    replay: 2
  })

  // Fill and overflow the PubSub
  yield* PubSub.publish(pubsub, "msg1")
  yield* PubSub.publish(pubsub, "msg2")
  yield* PubSub.publish(pubsub, "msg3")
  yield* PubSub.publish(pubsub, "msg4") // "msg1" is evicted

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)
    const messages = yield* PubSub.takeAll(subscription)
    console.log(messages) // ["msg2", "msg3", "msg4"]
  }))
})
```

**Signature**

```ts
declare const sliding: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L416)

Since v2.0.0