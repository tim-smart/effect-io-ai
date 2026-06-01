Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.getAndUpdate

Gets the current value and updates it using a function atomically. Publishes
the new value to all subscribers.

**When to use**

Use to derive and publish a new `TxSubscriptionRef` value while returning the
previous value.

**Example** (Getting and updating atomically)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(1)
  const old = yield* TxSubscriptionRef.getAndUpdate(ref, (n) => n + 10)
  console.log(old) // 1
  console.log(yield* TxSubscriptionRef.get(ref)) // 11
})
```

**See**

- `update` for updating without returning the previous value
- `updateAndGet` for returning the new value instead

**Signature**

```ts
declare const getAndUpdate: { <A>(f: (current: A) => A): (self: TxSubscriptionRef<A>) => Effect.Effect<A>; <A>(self: TxSubscriptionRef<A>, f: (current: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L377)

Since v3.10.0