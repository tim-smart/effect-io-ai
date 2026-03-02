Package: `effect`<br />
Module: `Channel`<br />

## Channel.merge

Returns a new channel, which is the merge of this channel and the specified
channel.

**Example**

```ts
import { Channel, Data } from "effect"

class MergeError extends Data.TaggedError("MergeError")<{
  readonly source: string
}> {}

// Create two channels
const leftChannel = Channel.fromIterable([1, 2, 3])
const rightChannel = Channel.fromIterable(["a", "b", "c"])

// Merge them with "either" halt strategy
const mergedChannel = Channel.merge(leftChannel, rightChannel, {
  haltStrategy: "either"
})

// Outputs elements from both channels concurrently
// Order may vary: 1, "a", 2, "b", 3, "c"
```

**Signature**

```ts
declare const merge: { <OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(right: Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, options?: { readonly haltStrategy?: HaltStrategy | undefined; } | undefined): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(left: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem1 | OutElem, OutErr | OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(left: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, right: Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>, options?: { readonly haltStrategy?: HaltStrategy | undefined; } | undefined): Channel<OutElem | OutElem1, OutErr | OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5725)

Since v2.0.0