Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Initially empty
  const initialSize = yield* PubSub.size(pubsub)
  console.log("Initial size:", initialSize) // 0

  // Publish some messages
  yield* PubSub.publish(pubsub, "msg1")
  yield* PubSub.publish(pubsub, "msg2")

  const afterPublish = yield* PubSub.size(pubsub)
  console.log("After publishing:", afterPublish) // 2
})
```

**Signature**

```ts
declare const size: <A>(self: PubSub<A>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L555)

Since v2.0.0