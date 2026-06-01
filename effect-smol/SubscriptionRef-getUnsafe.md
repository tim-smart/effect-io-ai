Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.getUnsafe

Retrieves the current value of the `SubscriptionRef` unsafely.

**When to use**

Use when you are in synchronous internals or test setup where concurrent
updates are controlled.

**Gotchas**

This function directly accesses the underlying reference without any
synchronization. It should only be used when you are certain there are no
concurrent modifications.

**Example** (Reading the current value unsafely)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L239)

Since v4.0.0