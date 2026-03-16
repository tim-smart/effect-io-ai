Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L709)

Since v2.0.0