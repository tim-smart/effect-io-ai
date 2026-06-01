Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.sizeUnsafe

Returns the current number of messages retained by the `PubSub` for active
subscribers synchronously.

**When to use**

Use when an immediate `PubSub` size snapshot is needed outside effectful code
and concurrent changes between the check and later use are acceptable.

**Details**

Returns `0` after shutdown. Because this is an unsafe synchronous snapshot,
prefer `size` in effectful code.

**Example** (Reading size synchronously)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L691)

Since v4.0.0