Package: `effect`<br />
Module: `Channel`<br />

## Channel.concat

Concatenates this channel with another channel, so that the second channel
starts emitting values after the first channel has completed.

**Example**

```ts
import { Channel, Data } from "effect"

class ConcatError extends Data.TaggedError("ConcatError")<{
  readonly reason: string
}> {}

// Create two channels
const firstChannel = Channel.fromIterable([1, 2, 3])
const secondChannel = Channel.fromIterable(["a", "b", "c"])

// Concatenate them
const concatenatedChannel = Channel.concat(firstChannel, secondChannel)

// Outputs: 1, 2, 3, "a", "b", "c"
```

**Signature**

```ts
declare const concat: { <OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(that: Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1, OutErr1 | OutErr, OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, that: Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): Channel<OutElem | OutElem1, OutErr1 | OutErr, OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2401)

Since v2.0.0