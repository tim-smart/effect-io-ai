Package: `effect`<br />
Module: `Channel`<br />

## Channel.runCollect

Runs a channel and collects all output elements into an array.

**Example**

```ts
import { Channel, Data } from "effect"

class CollectError extends Data.TaggedError("CollectError")<{
  readonly reason: string
}> {}

// Create a channel with elements
const numbersChannel = Channel.fromIterable([1, 2, 3, 4, 5])

// Collect all elements into an array
const collectEffect = Channel.runCollect(numbersChannel)

// Effect.runSync(collectEffect) // Returns: [1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const runCollect: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Array<OutElem>, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7218)

Since v2.0.0