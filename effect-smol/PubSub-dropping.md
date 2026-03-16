Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.dropping

Creates a bounded `PubSub` with the dropping strategy. The `PubSub` will drop new
messages if the `PubSub` is at capacity.

For best performance use capacities that are powers of two.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create dropping PubSub that drops new messages when full
  const pubsub = yield* PubSub.dropping<string>(3)

  // With replay buffer for late subscribers
  const pubsubWithReplay = yield* PubSub.dropping<string>({
    capacity: 3,
    replay: 5
  })

  // Fill the PubSub and see dropping behavior
  yield* PubSub.publish(pubsub, "msg1") // succeeds
  yield* PubSub.publish(pubsub, "msg2") // succeeds
  yield* PubSub.publish(pubsub, "msg3") // succeeds
  const dropped = yield* PubSub.publish(pubsub, "msg4") // returns false (dropped)
  console.log("Message dropped:", !dropped)
})
```

**Signature**

```ts
declare const dropping: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L368)

Since v2.0.0