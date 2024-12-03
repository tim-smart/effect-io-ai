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
export declare const runDrain: <OutElem, OutErr, InErr, OutDone, InDone, Env>(
  self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, Env>
) => Effect.Effect<OutDone, OutErr, Env>
```
