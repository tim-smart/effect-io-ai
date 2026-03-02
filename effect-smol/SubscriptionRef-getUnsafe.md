Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.getUnsafe

Unsafely retrieves the current value of the `SubscriptionRef`.

This function directly accesses the underlying reference without any
synchronization. It should only be used when you're certain there are no
concurrent modifications.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(42)

  const value = SubscriptionRef.getUnsafe(ref)
  console.log(value)
})
```

**Signature**

```ts
declare const getUnsafe: <A>(self: SubscriptionRef<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L134)

Since v2.0.0