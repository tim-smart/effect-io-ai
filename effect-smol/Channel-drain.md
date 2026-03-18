Package: `effect`<br />
Module: `Channel`<br />

## Channel.drain

Creates a new channel that consumes all output from the source channel
but emits nothing, preserving only the completion value.

**Example**

```ts
import { Channel } from "effect"

// Create a channel that outputs values
const sourceChannel = Channel.fromIterable([1, 2, 3, 4, 5])

// Drain all output, keeping only the completion
const drainedChannel = Channel.drain(sourceChannel)

// The channel completes but emits no values
// Useful for consuming side effects without collecting output
```

**Signature**

```ts
declare const drain: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<never, OutErr, OutDone, InElem, InErr, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2854)

Since v2.0.0