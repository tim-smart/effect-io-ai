Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.remainingUnsafe

Synchronously returns the number of messages currently available in the
subscription, or `Option.none()` when it is shut down.

**When to use**

Use when you need synchronous polling outside a managed workflow and want
shutdown observed as data instead of interruption.

**Example** (Checking remaining messages synchronously)

```ts
import { PubSub } from "effect"

declare const subscription: PubSub.Subscription<string>

// Unsafe synchronous check for remaining messages
const remainingOption = PubSub.remainingUnsafe(subscription)
if (remainingOption._tag === "Some") {
  console.log("Messages available:", remainingOption.value)
} else {
  console.log("Subscription is shutdown")
}

// Useful for polling or batching scenarios
if (remainingOption._tag === "Some" && remainingOption.value > 10) {
  // Process messages in batch
}
```

**See**

- `remaining` for the effectful variant that interrupts on shutdown

**Signature**

```ts
declare const remainingUnsafe: <A>(self: Subscription<A>) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1470)

Since v4.0.0