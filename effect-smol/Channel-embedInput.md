Package: `effect`<br />
Module: `Channel`<br />

## Channel.embedInput

Returns a new channel which embeds the given input handler into a Channel.

**Example**

```ts
import { Channel, Data, Effect } from "effect"

class EmbedError extends Data.TaggedError("EmbedError")<{
  readonly stage: string
}> {}

// Create a base channel
const baseChannel = Channel.fromIterable([1, 2, 3])

// Embed input handling - simplified example
const embeddedChannel = Channel.embedInput(
  baseChannel,
  (_upstream) => Effect.void
)
```

**Signature**

```ts
declare const embedInput: { <InElem, InErr, InDone, R>(input: (upstream: Pull.Pull<InElem, InErr, InDone>) => Effect.Effect<void, never, R>): <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, Env, InErr, InElem, InDone, R>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, input: (upstream: Pull.Pull<InElem, InErr, InDone>) => Effect.Effect<void, never, R>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6195)

Since v2.0.0