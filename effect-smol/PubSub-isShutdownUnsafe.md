Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isShutdownUnsafe

Checks synchronously whether `shutdown` has been called, returning `true`
after shutdown and `false` otherwise.

**Example** (Checking shutdown synchronously)

```ts
import { PubSub } from "effect"

declare const pubsub: PubSub.PubSub<string>

// Unsafe synchronous shutdown check
const isDown = PubSub.isShutdownUnsafe(pubsub)
if (isDown) {
  console.log("PubSub is shutdown, cannot publish")
} else {
  console.log("PubSub is active")
}
```

**Signature**

```ts
declare const isShutdownUnsafe: <A>(self: PubSub<A>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L862)

Since v4.0.0