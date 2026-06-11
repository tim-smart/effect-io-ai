Package: `effect`<br />
Module: `Queue`<br />

## Queue.failCauseUnsafe

Fails the queue with a cause synchronously. If the queue is already done, `false` is
returned.

**When to use**

Use when queue completion must be driven from synchronous internals while
preserving the full failure `Cause`.

**Gotchas**

This is an unsafe operation that directly modifies the queue without Effect wrapping.

**Example** (Failing queues with a cause synchronously)

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, string>(10)

  // Create a cause and fail the queue synchronously
  const cause = Cause.fail("Processing error")
  const failed = Queue.failCauseUnsafe(queue, cause)
  console.log(failed) // true

  // The queue is now done with the specified failure cause
  console.log(queue.state._tag) // "Done"
})
```

**Signature**

```ts
declare const failCauseUnsafe: <A, E>(self: Enqueue<A, E>, cause: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L924)

Since v4.0.0