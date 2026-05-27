Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.make

Constructs a new `SubscriptionRef` from an initial value.

**When to use**

Use to create shared mutable state when consumers need to read the latest
value and subscribe to every update.

**Details**

The initial value is published during construction, so `changes` starts new
subscribers with that value before future updates.

**See**

- `changes` for streaming the current value and subsequent updates
- `set` for replacing the value and notifying subscribers

**Signature**

```ts
declare const make: <A>(value: A) => Effect.Effect<SubscriptionRef<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L158)

Since v2.0.0