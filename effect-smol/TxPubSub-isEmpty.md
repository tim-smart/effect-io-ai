Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.isEmpty

Checks if the TxPubSub has no pending messages (all subscriber queues are empty).

**Example** (Checking whether a pub/sub is empty)

```ts
import { Effect, TxPubSub } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<number>()
  const empty = yield* TxPubSub.isEmpty(hub)
  console.log(empty) // true
})
```

**Signature**

```ts
declare const isEmpty: <A>(self: TxPubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L311)

Since v4.0.0