Package: `effect`<br />
Module: `Channel`<br />

## Channel.flatMap

Returns a new channel, which sequentially combines this channel, together
with the provided factory function, which creates a second channel based on
the output values of this channel. The result is a channel that will first
perform the functions of this channel, before performing the functions of
the created channel (including yielding its terminal value).

**Example**

```ts
import { Channel, Data } from "effect"

class ProcessError extends Data.TaggedError("ProcessError")<{
  readonly cause: string
}> {}

// Create a channel that outputs numbers
const numberChannel = Channel.fromIterable([1, 2, 3])

// FlatMap each number to create new channels
const flatMappedChannel = Channel.flatMap(
  numberChannel,
  (n) =>
    Channel.fromIterable(Array.from({ length: n }, (_, i) => `item-${n}-${i}`))
)

// Flattens nested channels into a single stream
// Outputs: "item-1-0", "item-2-0", "item-2-1", "item-3-0", "item-3-1", "item-3-2"
```

**Signature**

```ts
declare const flatMap: { <OutElem, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(f: (d: OutElem) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; }): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem1, OutErr1 | OutErr, OutDone, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: OutElem) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; }): Channel<OutElem1, OutErr | OutErr1, OutDone, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2098)

Since v2.0.0