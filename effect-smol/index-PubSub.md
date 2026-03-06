Package: `effect`<br />
Module: `index`<br />

## index.PubSub

Re-exports all named exports from the "./PubSub.ts" module as `PubSub`.

**Example**

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publisher
  yield* PubSub.publish(pubsub, "Hello")
  yield* PubSub.publish(pubsub, "World")

  // Subscriber
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)
    const message1 = yield* PubSub.take(subscription)
    const message2 = yield* PubSub.take(subscription)
    console.log(message1, message2) // "Hello", "World"
  }))
})
```

**Signature**

```ts
export * as PubSub from "./PubSub.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L2850)

Since v2.0.0