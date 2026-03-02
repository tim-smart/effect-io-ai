Package: `effect`<br />
Module: `Channel`<br />

## Channel.unwrap

Constructs a `Channel` from a scoped effect that will result in a
`Channel` if successful.

**Example**

```ts
import { Channel, Data, Effect } from "effect"

class UnwrapError extends Data.TaggedError("UnwrapError")<{
  readonly reason: string
}> {}

// Create an effect that produces a channel
const channelEffect = Effect.succeed(
  Channel.fromIterable([1, 2, 3])
)

// Unwrap the effect to get the channel
const unwrappedChannel = Channel.unwrap(channelEffect)

// The resulting channel outputs: 1, 2, 3
```

**Signature**

```ts
declare const unwrap: <OutElem, OutErr, OutDone, InElem, InErr, InDone, R2, E, R>(channel: Effect.Effect<Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, R2>, E, R>) => Channel<OutElem, E | OutErr, OutDone, InElem, InErr, InDone, Exclude<R, Scope.Scope> | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6147)

Since v2.0.0