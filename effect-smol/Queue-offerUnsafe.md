Package: `effect`<br />
Module: `Queue`<br />

## Queue.offerUnsafe

Adds a message to the queue synchronously. Returns `false` if the queue is done.

**When to use**

Use when you are already in synchronous queue internals or a performance
boundary where wrapping the mutation in `Effect` is intentionally avoided.

**Gotchas**

This is an unsafe operation that directly modifies the queue without Effect wrapping.
Use this only when you're certain about the synchronous nature of the operation.

**Example** (Offering a value synchronously)

```ts
import { Cause, Effect, Queue } from "effect"

// Create a queue effect and extract the queue for unsafe operations
const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(3)

  // Add messages synchronously using unsafe API
  const success1 = Queue.offerUnsafe(queue, 1)
  const success2 = Queue.offerUnsafe(queue, 2)
  console.log(success1, success2) // true, true

  // Check current size
  const size = Queue.sizeUnsafe(queue)
  console.log(size) // 2
})
```

**Signature**

```ts
declare const offerUnsafe: <A, E>(self: Enqueue<A, E>, message: Types.NoInfer<A>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L751)

Since v4.0.0