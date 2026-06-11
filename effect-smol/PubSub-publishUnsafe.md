Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.publishUnsafe

Attempts to publish a message synchronously without applying the PubSub
strategy's effectful surplus handling.

**When to use**

Use when you need a non-blocking synchronous publish attempt where `false`
is an acceptable result when the message cannot be accepted immediately.

**Details**

Returns `false` if the `PubSub` is shut down or the message cannot be
accepted immediately, for example when a bounded PubSub is full. Prefer
`publish` when backpressure or sliding behavior should be honored.

**Example** (Publishing without suspending)

```ts
import { PubSub } from "effect"

declare const pubsub: PubSub.PubSub<string>

// Unsafe synchronous publish (non-blocking)
const published = PubSub.publishUnsafe(pubsub, "Hello")
if (published) {
  console.log("Message published successfully")
} else {
  console.log("Message dropped (PubSub full or shutdown)")
}

// Useful for scenarios where you don't want to suspend
const messages = ["msg1", "msg2", "msg3"]
const publishedCount =
  messages.filter((msg) => PubSub.publishUnsafe(pubsub, msg)).length
console.log(`Published ${publishedCount} out of ${messages.length} messages`)
```

**See**

- `publish` for effectful publishing that honors the configured surplus strategy

**Signature**

```ts
declare const publishUnsafe: { <A>(value: A): (self: PubSub<A>) => boolean; <A>(self: PubSub<A>, value: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L969)

Since v4.0.0