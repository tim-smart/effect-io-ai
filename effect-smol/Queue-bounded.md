Package: `effect`<br />
Module: `Queue`<br />

## Queue.bounded

Creates a bounded queue with the specified capacity that uses backpressure strategy.

When the queue reaches capacity, producers will be suspended until space becomes available.
This ensures all messages are processed but may slow down producers.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<string>(5)

  // This will succeed as queue has capacity
  yield* Queue.offer(queue, "first")
  yield* Queue.offer(queue, "second")

  const size = yield* Queue.size(queue)
  console.log(size) // 2
})
```

**Signature**

```ts
declare const bounded: <A, E = never>(capacity: number) => Effect<Queue<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L383)

Since v2.0.0