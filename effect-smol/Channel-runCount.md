Package: `effect`<br />
Module: `Channel`<br />

## Channel.runCount

Runs a channel and counts the number of elements it outputs.

**Example**

```ts
import { Channel, Data } from "effect"

class CountError extends Data.TaggedError("CountError")<{
  readonly reason: string
}> {}

// Create a channel with multiple elements
const numbersChannel = Channel.fromIterable([1, 2, 3, 4, 5])

// Count the elements
const countEffect = Channel.runCount(numbersChannel)

// Effect.runSync(countEffect) // Returns: 5
```

**Signature**

```ts
declare const runCount: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<void, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7087)

Since v2.0.0