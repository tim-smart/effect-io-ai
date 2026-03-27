Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.isFull

Checks if any subscriber queue is at capacity.

**Example**

```ts
import { Effect, TxPubSub } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.bounded<number>(2)
  const full = yield* TxPubSub.isFull(hub)
  console.log(full) // false
})
```

**Signature**

```ts
declare const isFull: <A>(self: TxPubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L322)

Since v4.0.0