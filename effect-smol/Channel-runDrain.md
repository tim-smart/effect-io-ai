Package: `effect`<br />
Module: `Channel`<br />

## Channel.runDrain

Runs a channel and discards all output elements, returning only the final result.

**Example**

```ts
import { Channel, Data } from "effect"

class DrainError extends Data.TaggedError("DrainError")<{
  readonly stage: string
}> {}

// Create a channel that outputs elements and completes with a result
const resultChannel = Channel.fromIterable([1, 2, 3])
const completedChannel = Channel.concatWith(
  resultChannel,
  () => Channel.succeed("completed")
)

// Drain all elements and get only the final result
const drainEffect = Channel.runDrain(completedChannel)

// Effect.runSync(drainEffect) // Returns: "completed"
```

**Signature**

```ts
declare const runDrain: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<OutDone, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7118)

Since v2.0.0