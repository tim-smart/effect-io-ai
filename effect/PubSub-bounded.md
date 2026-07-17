Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.bounded

Creates a bounded `PubSub` that applies backpressure when it reaches
capacity.

**Details**

Published messages are retained until all current subscribers have taken
them. When the capacity is full, publishers suspend until space is available.
Pass an options object to configure both `capacity` and an optional replay
buffer for late subscribers.

**Example** (Creating a bounded PubSub)

```ts
import { Effect, PubSub } from "effect"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L322)

Since v2.0.0