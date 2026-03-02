Package: `effect`<br />
Module: `Channel`<br />

## Channel.flatten

Flatten a channel of channels.

**Example**

```ts
import { Channel, Data } from "effect"

class FlattenError extends Data.TaggedError("FlattenError")<{
  readonly cause: string
}> {}

// Create a channel that outputs channels
const nestedChannels = Channel.fromIterable([
  Channel.fromIterable([1, 2]),
  Channel.fromIterable([3, 4]),
  Channel.fromIterable([5, 6])
])

// Flatten the nested channels
const flattenedChannel = Channel.flatten(nestedChannels)

// Outputs: 1, 2, 3, 4, 5, 6
```

**Signature**

```ts
declare const flatten: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(channels: Channel<Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>) => Channel<OutElem, OutErr | OutErr1, OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2711)

Since v2.0.0