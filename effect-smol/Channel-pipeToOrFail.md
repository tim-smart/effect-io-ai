Package: `effect`<br />
Module: `Channel`<br />

## Channel.pipeToOrFail

Returns a new channel that pipes the output of this channel into the
specified channel and preserves this channel's failures without providing
them to the other channel for observation.

**Example**

```ts
import { Channel, Data } from "effect"

class SourceError extends Data.TaggedError("SourceError")<{
  readonly code: number
}> {}

// Create a failing source channel
const failingSource = Channel.fail(new SourceError({ code: 404 }))
const safeTransform = Channel.succeed("transformed")

// Pipe while preserving source failures
const safePipedChannel = Channel.pipeToOrFail(failingSource, safeTransform)

// Source errors are preserved and not sent to transform channel
```

**Signature**

```ts
declare const pipeToOrFail: { <OutElem2, OutErr2, OutDone2, OutElem, OutDone, Env2>(that: Channel<OutElem2, OutErr2, OutDone2, OutElem, never, OutDone, Env2>): <OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem2, OutErr | OutErr2, OutDone2, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem2, OutErr2, OutDone2, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, that: Channel<OutElem2, OutErr2, OutDone2, OutElem, never, OutDone, Env2>): Channel<OutElem2, OutErr | OutErr2, OutDone2, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6095)

Since v2.0.0