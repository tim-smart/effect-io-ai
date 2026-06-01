Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.get

Reads the current value of the TxSubscriptionRef.

**When to use**

Use to read the current `TxSubscriptionRef` value without subscribing to
future changes.

**Example** (Reading the current value)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make("hello")
  const value = yield* TxSubscriptionRef.get(ref)
  console.log(value) // "hello"
})
```

**See**

- `changes` for reading the current value and subsequent updates

**Signature**

```ts
declare const get: <A>(self: TxSubscriptionRef<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L186)

Since v3.10.0