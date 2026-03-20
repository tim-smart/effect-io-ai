Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.publishUnsafe

Publishes a message to the `PubSub`, returning whether the message was published
to the `PubSub`.

**Example**

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

**Signature**

```ts
declare const publishUnsafe: { <A>(value: A): (self: PubSub<A>) => boolean; <A>(self: PubSub<A>, value: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L857)

Since v4.0.0