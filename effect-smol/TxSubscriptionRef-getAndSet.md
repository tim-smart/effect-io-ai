Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.getAndSet

Gets the current value and sets a new value atomically. Publishes the new value
to all subscribers.

**When to use**

Use to replace the value while returning the previous value.

**Example** (Getting and setting atomically)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make("a")
  const old = yield* TxSubscriptionRef.getAndSet(ref, "b")
  console.log(old) // "a"
  console.log(yield* TxSubscriptionRef.get(ref)) // "b"
})
```

**See**

- `set` for setting without returning the previous value
- `getAndUpdate` for deriving the new value from the previous value

**Signature**

```ts
declare const getAndSet: { <A>(value: A): (self: TxSubscriptionRef<A>) => Effect.Effect<A>; <A>(self: TxSubscriptionRef<A>, value: A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L338)

Since v3.10.0