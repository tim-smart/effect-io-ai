Package: `effect`<br />
Module: `Channel`<br />

## Channel.ensuring

Returns a new channel with an attached finalizer. The finalizer is
guaranteed to be executed so long as the channel begins execution (and
regardless of whether or not it completes).

**Example**

```ts
import { Channel, Console, Data } from "effect"

class EnsureError extends Data.TaggedError("EnsureError")<{
  readonly operation: string
}> {}

// Create a channel
const dataChannel = Channel.fromIterable([1, 2, 3])

// Ensure cleanup always runs
const channelWithCleanup = Channel.ensuring(
  dataChannel,
  Console.log("Cleanup executed regardless of success or failure")
)
```

**Signature**

```ts
declare const ensuring: { <Env2>(finalizer: Effect.Effect<unknown, never, Env2>): <OutElem, OutDone, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, finalizer: Effect.Effect<unknown, never, Env2>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6560)

Since v2.0.0