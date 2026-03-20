Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isEmpty

Returns `true` if the `Pubsub` contains zero elements, `false` otherwise.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Initially empty
  const initiallyEmpty = yield* PubSub.isEmpty(pubsub)
  console.log("Initially empty:", initiallyEmpty) // true

  // Publish a message
  yield* PubSub.publish(pubsub, "Hello")

  const nowEmpty = yield* PubSub.isEmpty(pubsub)
  console.log("Now empty:", nowEmpty) // false
})
```

**Signature**

```ts
declare const isEmpty: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L641)

Since v2.0.0