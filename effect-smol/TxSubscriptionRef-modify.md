Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.modify

Modifies the value of the TxSubscriptionRef using a function that returns both a
result and the new value. The new value is published to all subscribers atomically.

**When to use**

Use to compute a separate return value and next `TxSubscriptionRef` state in
one transactional update.

**Example** (Modifying and returning a value)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(10)
  const result = yield* TxSubscriptionRef.modify(ref, (n) => [`was ${n}`, n + 1])
  console.log(result) // "was 10"
  console.log(yield* TxSubscriptionRef.get(ref)) // 11
})
```

**See**

- `update` for deriving the next value without a separate return value
- `set` for replacing the value directly

**Signature**

```ts
declare const modify: { <A, B>(f: (current: A) => [returnValue: B, newValue: A]): (self: TxSubscriptionRef<A>) => Effect.Effect<B>; <A, B>(self: TxSubscriptionRef<A>, f: (current: A) => [returnValue: B, newValue: A]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L192)

Since v3.10.0