Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.sizeUnsafe

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

**Example**

```ts
import { PubSub } from "effect"

// Unsafe synchronous size check
declare const pubsub: PubSub.PubSub<string>

const size = PubSub.sizeUnsafe(pubsub)
console.log("Current size:", size)
```

**Signature**

```ts
declare const sizeUnsafe: <A>(self: PubSub<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L575)

Since v2.0.0