Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.shutdown

Shuts down the `PubSub`, interrupting suspended publishers and subscribers
and finalizing active subscriptions.

After shutdown, `publish` and `publishAll` succeed with `false`,
`publishUnsafe` returns `false`, and subscription operations such as `take`
interrupt.

**Example** (Shutting down a PubSub)

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(1)

  // Shutdown the PubSub
  yield* PubSub.shutdown(pubsub)

  const isShutdown = yield* PubSub.isShutdown(pubsub)
  console.log("Is shutdown:", isShutdown) // true

  // Publishing after shutdown returns false
  const published = yield* PubSub.publish(pubsub, "msg1")
  console.log("Published after shutdown:", published) // false
})
```

**Signature**

```ts
declare const shutdown: <A>(self: PubSub<A>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L726)

Since v2.0.0