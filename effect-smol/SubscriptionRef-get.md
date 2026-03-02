Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.get

Retrieves the current value of the `SubscriptionRef`.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(42)

  const value = yield* SubscriptionRef.get(ref)
  console.log(value)
})
```

**Signature**

```ts
declare const get: <A>(self: SubscriptionRef<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L154)

Since v2.0.0