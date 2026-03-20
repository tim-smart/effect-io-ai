Package: `effect`<br />
Module: `Channel`<br />

## Channel.mergeAll

Merges multiple channels with specified concurrency and buffering options.

**Example**

```ts
import { Channel, Data } from "effect"

class MergeAllError extends Data.TaggedError("MergeAllError")<{
  readonly reason: string
}> {}

// Create channels that output other channels
const nestedChannels = Channel.fromIterable([
  Channel.fromIterable([1, 2]),
  Channel.fromIterable([3, 4]),
  Channel.fromIterable([5, 6])
])

// Merge all channels with bounded concurrency
const mergedChannel = Channel.mergeAll({
  concurrency: 2,
  bufferSize: 16
})(nestedChannels)

// Outputs: 1, 2, 3, 4, 5, 6 (order may vary due to concurrency)
```

**Signature**

```ts
declare const mergeAll: { (options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; readonly switch?: boolean | undefined; }): <OutElem, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutErr, OutDone, InElem, InErr, InDone, Env>(channels: Channel<Channel<OutElem, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr1 | OutErr, OutDone, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; <OutElem, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1, OutErr, OutDone, InElem, InErr, InDone, Env>(channels: Channel<Channel<OutElem, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, OutErr, OutDone, InElem, InErr, InDone, Env>, options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; readonly switch?: boolean | undefined; }): Channel<OutElem, OutErr1 | OutErr, OutDone, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5553)

Since v2.0.0