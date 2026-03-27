Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.awaitShutdown

Waits for the TxPubSub to be shut down.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L607)

Since v4.0.0