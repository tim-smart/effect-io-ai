Package: `effect`<br />
Module: `Queue`<br />

## Queue.endUnsafe

Signal that the queue is complete synchronously. If the queue is already done, `false` is
returned.

This is an unsafe operation that directly modifies the queue without Effect wrapping.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

// Create a queue and use unsafe operations
const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)

  // Add some messages
  Queue.offerUnsafe(queue, 1)
  Queue.offerUnsafe(queue, 2)

  // End the queue synchronously
  const ended = Queue.endUnsafe(queue)
  console.log(ended) // true

  // The queue is now done
  console.log(queue.state._tag) // "Done"
})
```

**Signature**

```ts
declare const endUnsafe: <A, E>(self: Enqueue<A, E | Done>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L861)

Since v4.0.0