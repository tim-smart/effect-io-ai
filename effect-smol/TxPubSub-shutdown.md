Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.shutdown

Shuts down the TxPubSub and all subscriber queues. Subsequent publish operations
will return `false`. Subsequent subscribe operations will receive an already-shutdown queue.

**Example**

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
declare const shutdown: <A>(self: TxPubSub<A>) => Effect.Effect<void, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L578)

Since v4.0.0