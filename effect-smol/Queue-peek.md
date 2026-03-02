Package: `effect`<br />
Module: `Queue`<br />

## Queue.peek

Views the next item without removing it.

Blocks until an item is available. If the queue is done or fails, the error is propagated.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(10)
  yield* Queue.offer(queue, 42)

  // Peek at the next item without removing it
  const item = yield* Queue.peek(queue)
  console.log(item) // 42
})
```

**Signature**

```ts
declare const peek: <A, E>(self: Dequeue<A, E>) => Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1261)

Since v4.0.0