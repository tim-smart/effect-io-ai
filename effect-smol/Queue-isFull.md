Package: `effect`<br />
Module: `Queue`<br />

## Queue.isFull

Check if the queue is full.

**Example**

```ts
import { Cause, Effect, Option, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(3)

  console.log(yield* Queue.isFull(queue)) // false

  // Add some messages
  yield* Queue.offerAll(queue, [1, 2, 3])

  console.log(yield* Queue.isFull(queue)) // true
})
```

**Signature**

```ts
declare const isFull: <A, E>(self: Dequeue<A, E>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1414)

Since v4.0.0