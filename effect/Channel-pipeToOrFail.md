# pipeToOrFail

Returns a new channel that pipes the output of this channel into the
specified channel and preserves this channel's failures without providing
them to the other channel for observation.

To import and use `pipeToOrFail` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.pipeToOrFail
undefined

**Signature**

```ts
export declare const pipeToOrFail: {
  <OutElem2, OutElem, OutErr2, OutDone2, OutDone, Env2>(
    that: Channel<OutElem2, OutElem, OutErr2, never, OutDone2, OutDone, Env2>
  ): <InElem, OutErr, InErr, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem2, InElem, OutErr2 | OutErr, InErr, OutDone2, InDone, Env2 | Env>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem2, OutErr2, OutDone2, Env2>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    that: Channel<OutElem2, OutElem, OutErr2, never, OutDone2, OutDone, Env2>
  ): Channel<OutElem2, InElem, OutErr | OutErr2, InErr, OutDone2, InDone, Env | Env2>
}
```
