Package: `effect`<br />
Module: `Channel`<br />

## Channel.catchCause

Catches any cause of failure from the channel and allows recovery by
creating a new channel based on the caught cause.

**Example**

```ts
import { Cause, Channel, Data } from "effect"

class ProcessError extends Data.TaggedError("ProcessError")<{
  readonly reason: string
}> {}

class RecoveryError extends Data.TaggedError("RecoveryError")<{
  readonly message: string
}> {}

// Create a failing channel
const failingChannel = Channel.fail(
  new ProcessError({ reason: "network error" })
)

// Catch the cause and provide recovery
const recoveredChannel = Channel.catchCause(failingChannel, (cause) => {
  if (Cause.hasFails(cause)) {
    return Channel.succeed("Recovered from failure")
  }
  return Channel.succeed("Recovered from interruption")
})

// The channel recovers gracefully from errors
```

**Signature**

```ts
declare const catchCause: { <OutErr, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(f: (d: Cause.Cause<OutErr>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1, OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: Cause.Cause<OutErr>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): Channel<OutElem | OutElem1, OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3632)

Since v4.0.0