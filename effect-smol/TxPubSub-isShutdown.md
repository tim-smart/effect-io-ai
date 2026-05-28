Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.isShutdown

Checks whether the TxPubSub has been shut down.

**Example** (Checking whether a pub/sub is shut down)

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
declare const isShutdown: <A>(self: TxPubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L400)

Since v2.0.0