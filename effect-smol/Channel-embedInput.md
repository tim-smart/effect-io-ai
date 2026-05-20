Package: `effect`<br />
Module: `Channel`<br />

## Channel.embedInput

Runs an input handler against the upstream pull while the wrapped channel
runs without receiving upstream input directly.

**Details**

The input handler is forked in the channel scope. The wrapped channel is run
with an already-completed input.

**Example** (Embedding custom input handling)

```ts
import { Channel, Effect } from "effect"

// Create a base channel
const baseChannel = Channel.fromIterable([1, 2, 3])

// Drain the embedded input while the base channel runs
const embeddedChannel = Channel.embedInput(
  baseChannel,
  (upstream) =>
    upstream.pipe(
      Effect.tap((message) =>
        Effect.sync(() => console.log(message))
      ),
      Effect.forever,
      Effect.ignore
    )
)
```

**Signature**

```ts
declare const embedInput: { <InElem, InErr, InDone, R>(input: (upstream: Pull.Pull<InElem, InErr, InDone>) => Effect.Effect<void, never, R>): <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, Env, InErr, InElem, InDone, R>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, input: (upstream: Pull.Pull<InElem, InErr, InDone>) => Effect.Effect<void, never, R>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6585)

Since v2.0.0