Package: `effect`<br />
Module: `Queue`<br />

## Queue.sliding

Creates a bounded queue with sliding strategy. When the queue reaches capacity,
new elements are added and the oldest elements are dropped.

This strategy prevents producers from being blocked but may result in message loss.
Useful when you want to maintain a rolling window of the most recent messages.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.sliding<number>(3)

  // Fill the queue to capacity
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)
  yield* Queue.offer(queue, 3)

  // This will succeed, dropping the oldest element (1)
  yield* Queue.offer(queue, 4)

  const all = yield* Queue.takeAll(queue)
  console.log(all) // [2, 3, 4] - oldest element (1) was dropped
})
```

**Signature**

```ts
declare const sliding: <A, E = never>(capacity: number) => Effect<Queue<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L415)

Since v2.0.0