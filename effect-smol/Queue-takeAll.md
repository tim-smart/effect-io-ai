Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeAll

Take all messages from the queue, or wait for messages to be available.

If the queue is done, the `done` flag will be `true`. If the queue
fails, the Effect will fail with the error.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(5)

  // Add several messages
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5])

  // Take all available messages
  const messages1 = yield* Queue.takeAll(queue)
  console.log(messages1) // [1, 2, 3, 4, 5]
})
```

**Signature**

```ts
declare const takeAll: <A, E>(self: Dequeue<A, E>) => Effect<Arr.NonEmptyArray<A>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1028)

Since v4.0.0