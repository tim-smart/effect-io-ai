Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.takeUpTo

Takes up to the specified number of messages from the subscription without suspending.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish multiple messages
  yield* PubSub.publishAll(pubsub, ["msg1", "msg2", "msg3", "msg4", "msg5"])

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Take up to 3 messages
    const upTo3 = yield* PubSub.takeUpTo(subscription, 3)
    console.log("Up to 3:", upTo3) // ["msg1", "msg2", "msg3"]

    // Take up to 5 more (only 2 remaining)
    const upTo5 = yield* PubSub.takeUpTo(subscription, 5)
    console.log("Up to 5:", upTo5) // ["msg4", "msg5"]

    // No more messages available
    const noMore = yield* PubSub.takeUpTo(subscription, 10)
    console.log("No more:", noMore) // []
  }))
})
```

**Signature**

```ts
declare const takeUpTo: { (max: number): <A>(self: Subscription<A>) => Effect.Effect<Array<A>>; <A>(self: Subscription<A>, max: number): Effect.Effect<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1159)

Since v4.0.0