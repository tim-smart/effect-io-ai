Package: `effect`<br />
Module: `Channel`<br />

## Channel.pipeTo

Returns a new channel that pipes the output of this channel into the
specified channel. The returned channel has the input type of this channel,
and the output type of the specified channel, terminating with the value of
the specified channel.

**Example**

```ts
import { Channel, Data } from "effect"

class PipeError extends Data.TaggedError("PipeError")<{
  readonly stage: string
}> {}

// Create source and transform channels
const sourceChannel = Channel.fromIterable([1, 2, 3])
const transformChannel = Channel.map(sourceChannel, (n: number) => n * 2)

// Pipe the source into the transform
const pipedChannel = Channel.pipeTo(sourceChannel, transformChannel)

// Outputs: 2, 4, 6
```

**Signature**

```ts
declare const pipeTo: { <OutElem2, OutErr2, OutDone2, OutElem, OutErr, OutDone, Env2>(that: Channel<OutElem2, OutErr2, OutDone2, OutElem, OutErr, OutDone, Env2>): <InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem2, OutErr2, OutDone2, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem2, OutErr2, OutDone2, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, that: Channel<OutElem2, OutErr2, OutDone2, OutElem, OutErr, OutDone, Env2>): Channel<OutElem2, OutErr2, OutDone2, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6048)

Since v2.0.0