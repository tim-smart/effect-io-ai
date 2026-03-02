Package: `effect`<br />
Module: `Queue`<br />

## Queue.dropping

Creates a bounded queue with dropping strategy. When the queue reaches capacity,
new elements are dropped and the offer operation returns false.

This strategy prevents producers from being blocked and preserves existing messages,
but new messages may be lost when the queue is full.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.dropping<number>(2)

  // Fill the queue to capacity
  const success1 = yield* Queue.offer(queue, 1)
  const success2 = yield* Queue.offer(queue, 2)
  console.log(success1, success2) // true, true

  // This will be dropped
  const success3 = yield* Queue.offer(queue, 3)
  console.log(success3) // false

  const all = yield* Queue.takeAll(queue)
  console.log(all) // [1, 2] - element 3 was dropped
})
```

**Signature**

```ts
declare const dropping: <A, E = never>(capacity: number) => Effect<Queue<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L448)

Since v2.0.0