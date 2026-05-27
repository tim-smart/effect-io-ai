Package: `effect`<br />
Module: `Channel`<br />

## Channel.flatMap

Maps each output element to a channel and flattens the child channel
outputs.

**Details**

The source channel's done value is preserved. Child channel done values are
used only for child-channel completion. By default child channels are run
sequentially. Use `options.concurrency` and `options.bufferSize` to run child
channels concurrently.

**Example** (FlatMapping channel output)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2256)

Since v2.0.0