Package: `effect`<br />
Module: `Channel`<br />

## Channel.onExit

Returns a channel with an exit-aware finalizer that is guaranteed to run once
the channel begins execution, whether it succeeds or fails.

**Example** (Running exit finalizers)

```ts
import { Channel, Console, Data, Exit } from "effect"

class ExitError extends Data.TaggedError("ExitError")<{
  readonly stage: string
}> {}

// Create a channel
const dataChannel = Channel.fromIterable([1, 2, 3])

// Attach exit handler
const channelWithExit = Channel.onExit(dataChannel, (exit) => {
  if (Exit.isSuccess(exit)) {
    return Console.log(`Channel completed successfully with: ${exit.value}`)
  } else {
    return Console.log(`Channel failed with: ${exit.cause}`)
  }
})
```

**Signature**

```ts
declare const onExit: { <OutDone, OutErr, Env2>(finalizer: (e: Exit.Exit<OutDone, OutErr>) => Effect.Effect<unknown, never, Env2>): <OutElem, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, finalizer: (e: Exit.Exit<OutDone, OutErr>) => Effect.Effect<unknown, never, Env2>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6987)

Since v4.0.0