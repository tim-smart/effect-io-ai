Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.modifySome

Computes a return value and optionally updates the reference.

**When to use**

Use to return a separate result while synchronously deciding whether to
publish a new value.

**Details**

If the function returns `Option.some` for the new value, the value is set and
published. If it returns `Option.none`, the reference is left unchanged and
no update is published.

**Example** (Conditionally modifying a value)

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const result = yield* SubscriptionRef.modifySome(
    ref,
    (n) =>
      n > 5 ? ["Updated", Option.some(n * 2)] : ["Not updated", Option.none()]
  )
  console.log(result)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const modifySome: { <B, A>(modify: (a: A) => readonly [B, Option.Option<A>]): (self: SubscriptionRef<A>) => Effect.Effect<B>; <A, B>(self: SubscriptionRef<A>, modify: (a: A) => readonly [B, Option.Option<A>]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L602)

Since v2.0.0