Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.make

Creates a PubSub with a custom atomic implementation and strategy.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create custom PubSub with specific atomic implementation and strategy
  const pubsub = yield* PubSub.make<string>({
    atomicPubSub: () => PubSub.makeAtomicBounded(100),
    strategy: () => new PubSub.BackPressureStrategy()
  })

  // Use the created PubSub
  yield* PubSub.publish(pubsub, "Hello")
})
```

**Signature**

```ts
declare const make: <A>(options: { readonly atomicPubSub: LazyArg<PubSub.Atomic<A>>; readonly strategy: LazyArg<PubSub.Strategy<A>>; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L276)

Since v4.0.0