Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.shutdown

Shuts down the TxPubSub and all subscriber queues registered at the time of shutdown.

**Details**

After shutdown, `publish` and `publishAll` return `false`, and `awaitShutdown` completes. The operation is idempotent.

**Gotchas**

Subscribers acquired after shutdown are not automatically shut down by this call.

**Example** (Shutting down a pub/sub)

```ts
import { Effect, TxPubSub } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<number>()
  yield* TxPubSub.shutdown(hub)

  const shut = yield* TxPubSub.isShutdown(hub)
  console.log(shut) // true

  const accepted = yield* TxPubSub.publish(hub, 1)
  console.log(accepted) // false
})
```

**Signature**

```ts
declare const shutdown: <A>(self: TxPubSub<A>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L599)

Since v2.0.0