# runDrain

Runs a channel until the end is received.

To import and use `runDrain` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.runDrain
```

**Signature**

```ts
export declare const runDrain: <Env, InErr, InDone, OutElem, OutErr, OutDone>(
  self: Channel<Env, InErr, unknown, InDone, OutErr, OutElem, OutDone>
) => Effect.Effect<Env, OutErr, OutDone>
```
