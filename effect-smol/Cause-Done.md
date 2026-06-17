Package: `effect`<br />
Module: `Cause`<br />

## Cause.Done

A graceful completion signal for queues and streams.

**When to use**

Use to model normal producer completion through a stream or queue error
channel.

**Details**

`Done` indicates that a producer has finished normally — no more elements
will arrive. It is distinct from an error or interruption; it represents
successful completion. The optional `value` field can carry a final
leftover payload.

**Example** (Signaling queue completion)

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)
  yield* Queue.offer(queue, 1)
  yield* Queue.end(queue)

  const result = yield* Effect.flip(Queue.take(queue))
  console.log(Cause.isDone(result)) // true
})
```

**Signature**

```ts
export interface Done<A = void> {
  readonly [DoneTypeId]: typeof DoneTypeId
  readonly _tag: "Done"
  readonly value: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1334)

Since v4.0.0