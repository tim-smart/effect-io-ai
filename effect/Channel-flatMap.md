# flatMap

Returns a new channel, which sequentially combines this channel, together
with the provided factory function, which creates a second channel based on
the terminal value of this channel. The result is a channel that will first
perform the functions of this channel, before performing the functions of
the created channel (including yielding its terminal value).

To import and use `flatMap` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.flatMap
undefined

**Signature**

```ts
export declare const flatMap: {
  <OutDone, OutElem1, InElem1, OutErr1, InErr1, OutDone2, InDone1, Env1>(
    f: (d: OutDone) => Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone2, InDone1, Env1>
  ): <OutElem, InElem, OutErr, InErr, InDone, Env>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<
    OutElem1 | OutElem,
    InElem & InElem1,
    OutErr1 | OutErr,
    InErr & InErr1,
    OutDone2,
    InDone & InDone1,
    Env1 | Env
  >
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, InElem1, OutErr1, InErr1, OutDone2, InDone1, Env1>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    f: (d: OutDone) => Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone2, InDone1, Env1>
  ): Channel<
    OutElem | OutElem1,
    InElem & InElem1,
    OutErr | OutErr1,
    InErr & InErr1,
    OutDone2,
    InDone & InDone1,
    Env | Env1
  >
}
```
