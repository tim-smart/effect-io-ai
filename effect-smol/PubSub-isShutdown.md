Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isShutdown

Checks effectfully whether `shutdown` has been called, returning `true`
after shutdown and `false` otherwise.

**Example** (Checking whether a PubSub is shutdown)

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Initially not shutdown
  const initiallyShutdown = yield* PubSub.isShutdown(pubsub)
  console.log("Initially shutdown:", initiallyShutdown) // false

  // Shutdown the PubSub
  yield* PubSub.shutdown(pubsub)

  const nowShutdown = yield* PubSub.isShutdown(pubsub)
  console.log("Now shutdown:", nowShutdown) // true
})
```

**Signature**

```ts
declare const isShutdown: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L837)

Since v2.0.0