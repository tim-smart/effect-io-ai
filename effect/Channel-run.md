# run

Runs a channel until the end is received.

To import and use `run` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.run
undefined

**Signature**

```ts
export declare const run: <OutErr, InErr, OutDone, InDone, Env>(
  self: Channel<never, unknown, OutErr, InErr, OutDone, InDone, Env>
) => Effect.Effect<OutDone, OutErr, Env>
```
