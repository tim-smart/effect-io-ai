Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.capacity

Returns the number of elements the queue can hold.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(100)
  const cap = PubSub.capacity(pubsub)
  console.log("PubSub capacity:", cap) // 100

  const unboundedPubsub = yield* PubSub.unbounded<string>()
  const unboundedCap = PubSub.capacity(unboundedPubsub)
  console.log("Unbounded capacity:", unboundedCap) // Number.MAX_SAFE_INTEGER
})
```

**Signature**

```ts
declare const capacity: <A>(self: PubSub<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L524)

Since v2.0.0