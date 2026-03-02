Package: `effect`<br />
Module: `Queue`<br />

## Queue.offerAllUnsafe

Add multiple messages to the queue synchronously. Returns the remaining messages that
were not added.

This is an unsafe operation that directly modifies the queue without Effect wrapping.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

// Create a bounded queue and use unsafe API
const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(3)

  // Try to add 5 messages to capacity-3 queue using unsafe API
  const remaining = Queue.offerAllUnsafe(queue, [1, 2, 3, 4, 5])
  console.log(remaining) // [4, 5] - couldn't fit the last 2

  // Check what's in the queue
  const size = Queue.sizeUnsafe(queue)
  console.log(size) // 3
})
```

**Signature**

```ts
declare const offerAllUnsafe: <A, E>(self: Enqueue<A, E>, messages: Iterable<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L652)

Since v4.0.0