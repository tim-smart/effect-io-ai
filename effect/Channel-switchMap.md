Package: `effect`<br />
Module: `Channel`<br />

## Channel.switchMap

Maps each output element to a channel and emits values from the most recent
active child channels.

**Details**

With the default concurrency of `1`, starting a new child channel interrupts
the previous child channel. Use `options.concurrency` to allow more active
child channels. The source channel's done value is preserved.

**Example** (Switching mapped channels)

```ts
import { Channel, Data } from "effect"

class SwitchError extends Data.TaggedError("SwitchError")<{
  readonly reason: string
}> {}

// Create a channel that outputs numbers
const numberChannel = Channel.fromIterable([1, 2, 3])

// Switch to new channels based on each value
const switchedChannel = Channel.switchMap(
  numberChannel,
  (n) => Channel.fromIterable([`value-${n}`])
)

// Outputs: "value-1", "value-2", "value-3"
```

**Signature**

```ts
declare const switchMap: { <OutElem, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(f: (d: OutElem) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; }): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem1, OutErr1 | OutErr, OutDone, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: OutElem) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; }): Channel<OutElem1, OutErr | OutErr1, OutDone, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L5816)

Since v4.0.0