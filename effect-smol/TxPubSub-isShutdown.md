Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.isShutdown

Checks if the TxPubSub has been shut down.

**Example**

```ts
import { Effect, TxPubSub } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<number>()
  console.log(yield* TxPubSub.isShutdown(hub)) // false
  yield* TxPubSub.shutdown(hub)
  console.log(yield* TxPubSub.isShutdown(hub)) // true
})
```

**Signature**

```ts
declare const isShutdown: <A>(self: TxPubSub<A>) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L351)

Since v4.0.0