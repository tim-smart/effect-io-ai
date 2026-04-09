Package: `effect`<br />
Module: `Channel`<br />

## Channel.toQueue

Converts a channel to a queue for concurrent consumption.

**Example**

```ts
import { Channel, Data } from "effect"

class QueueError extends Data.TaggedError("QueueError")<{
  readonly operation: string
}> {}

// Create a channel with data
const dataChannel = Channel.fromIterable([1, 2, 3, 4, 5])

// Convert to queue for concurrent processing
const queueEffect = Channel.toQueue(dataChannel, { capacity: 32 })

// The queue can be used for concurrent consumption
// Multiple consumers can read from the queue
```

**Signature**

```ts
declare const toQueue: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Queue.Dequeue<OutElem, OutErr | Cause.Done>, never, Env | Scope.Scope>; <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Effect.Effect<Queue.Dequeue<OutElem, OutErr | Cause.Done>, never, Env | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7545)

Since v4.0.0