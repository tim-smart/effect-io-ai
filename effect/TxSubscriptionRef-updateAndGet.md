Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.updateAndGet

Updates the value using a function and returns the new value. Publishes the
new value to all subscribers.

**When to use**

Use to derive and publish a new `TxSubscriptionRef` value while returning
that new value.

**Example** (Updating and reading atomically)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(3)
  const result = yield* TxSubscriptionRef.updateAndGet(ref, (n) => n * 3)
  console.log(result) // 9
})
```

**See**

- `update` for updating without returning the new value
- `getAndUpdate` for returning the previous value instead

**Signature**

```ts
declare const updateAndGet: { <A>(f: (current: A) => A): (self: TxSubscriptionRef<A>) => Effect.Effect<A>; <A>(self: TxSubscriptionRef<A>, f: (current: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxSubscriptionRef.ts#L385)

Since v3.10.0