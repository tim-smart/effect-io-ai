Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isFull

Returns `true` if the `PubSub` contains at least one element, `false`
otherwise.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(2)

  // Initially not full
  const initiallyFull = yield* PubSub.isFull(pubsub)
  console.log("Initially full:", initiallyFull) // false

  // Fill the PubSub
  yield* PubSub.publish(pubsub, "msg1")
  yield* PubSub.publish(pubsub, "msg2")

  const nowFull = yield* PubSub.isFull(pubsub)
  console.log("Now full:", nowFull) // true
})
```

**Signature**

```ts
declare const isFull: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L611)

Since v2.0.0