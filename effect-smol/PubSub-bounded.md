Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.bounded

Creates a bounded PubSub with backpressure strategy.

The PubSub will retain messages until they have been taken by all subscribers.
When the PubSub reaches capacity, publishers will be suspended until space becomes available.
This ensures message delivery guarantees but may slow down fast publishers.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create bounded PubSub with capacity 100
  const pubsub = yield* PubSub.bounded<string>(100)

  // Create with replay buffer for late subscribers
  const pubsubWithReplay = yield* PubSub.bounded<string>({
    capacity: 100,
    replay: 10 // Last 10 messages replayed to new subscribers
  })
})
```

**Signature**

```ts
declare const bounded: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L325)

Since v2.0.0