# flatMap

Returns a new channel, which sequentially combines this channel, together
with the provided factory function, which creates a second channel based on
the terminal value of this channel. The result is a channel that will first
perform the functions of this channel, before performing the functions of
the created channel (including yielding its terminal value).

To import and use `flatMap` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <OutDone, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone2>(
    f: (d: OutDone) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone2>
  ): <Env, InErr, InElem, InDone, OutErr, OutElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<
    Env1 | Env,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr1 | OutErr,
    OutElem1 | OutElem,
    OutDone2
  >
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (d: OutDone) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone2>
  ): Channel<
    Env | Env1,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr | OutErr1,
    OutElem | OutElem1,
    OutDone2
  >
}
```
