Package: `effect`<br />
Module: `Queue`<br />

## Queue.isFullUnsafe

Check if the queue is full synchronously.

**Example**

```ts
import { Cause, Effect, Option, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(3)

  console.log(Queue.isFullUnsafe(queue)) // false

  // Add some messages
  yield* Queue.offerAll(queue, [1, 2, 3])

  console.log(Queue.isFullUnsafe(queue)) // true
})
```

**Signature**

```ts
declare const isFullUnsafe: <A, E>(self: Dequeue<A, E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1478)

Since v4.0.0