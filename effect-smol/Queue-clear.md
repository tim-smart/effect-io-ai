Package: `effect`<br />
Module: `Queue`<br />

## Queue.clear

Take all messages from the queue, returning an empty array if the queue
is empty or done.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(10)

  // Add several messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5])

  // Clear all messages from the queue
  const messages = yield* Queue.clear(queue)
  console.log(messages) // [1, 2, 3, 4, 5]

  // Queue is now empty
  const size = yield* Queue.size(queue)
  console.log(size) // 0

  // Clearing empty queue returns empty array
  const empty = yield* Queue.clear(queue)
  console.log(empty) // []
})
```

**Signature**

```ts
declare const clear: <A, E>(self: Dequeue<A, E>) => Effect<Array<A>, Pull.ExcludeDone<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L990)

Since v4.0.0