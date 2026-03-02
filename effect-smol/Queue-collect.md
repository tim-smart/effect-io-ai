Package: `effect`<br />
Module: `Queue`<br />

## Queue.collect

Take all messages from the queue, until the queue has errored or is done.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(5)

  // Add several messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5])
  // Some time later, end the queue
  yield* Effect.forkChild(Queue.end(queue))

  // Collect all available messages
  const messages = yield* Queue.collect(queue)
  console.log(messages) // [1, 2, 3, 4, 5]
})
```

**Signature**

```ts
declare const collect: <A, E>(self: Dequeue<A, E | Done>) => Effect<Array<A>, Pull.ExcludeDone<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1055)

Since v4.0.0