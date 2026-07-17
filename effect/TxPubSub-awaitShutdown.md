Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.awaitShutdown

Waits for the TxPubSub to be shut down.

**Example** (Waiting for shutdown)

```ts
import { Effect, TxPubSub } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<number>()

  const fiber = yield* Effect.forkChild(TxPubSub.awaitShutdown(hub))
  yield* TxPubSub.shutdown(hub)
  yield* fiber.await
})
```

**Signature**

```ts
declare const awaitShutdown: <A>(self: TxPubSub<A>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxPubSub.ts#L655)

Since v2.0.0