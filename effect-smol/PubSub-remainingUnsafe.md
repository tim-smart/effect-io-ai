Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.remainingUnsafe

Returns the number of messages currently available in the subscription.

**Example**

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

**Signature**

```ts
declare const remainingUnsafe: <A>(self: Subscription<A>) => Option.Option<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1319)

Since v4.0.0