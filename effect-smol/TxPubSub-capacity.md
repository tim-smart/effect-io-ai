Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.capacity

Returns the capacity of the TxPubSub.

**Example**

```ts
import { Effect, TxPubSub } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.bounded<number>(16)
  console.log(TxPubSub.capacity(hub)) // 16
})
```

**Signature**

```ts
declare const capacity: <A>(self: TxPubSub<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L248)

Since v4.0.0