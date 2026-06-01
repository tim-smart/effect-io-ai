Package: `effect`<br />
Module: `Queue`<br />

## Queue.sliding

Creates a bounded queue with sliding strategy. When the queue reaches capacity,
new elements are added and the oldest elements are dropped.

**When to use**

Use when you need producer offers not to block and can accept dropping the
oldest messages, such as when maintaining a rolling window of recent values.

**Example** (Creating sliding queues)

```ts
import { Effect, Queue } from "effect"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L583)

Since v2.0.0