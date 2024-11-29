# foldChannel

Folds over the result of this channel.

To import and use `foldChannel` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.foldChannel
undefined

**Signature**

```ts
export declare const foldChannel: {
  <
    OutErr,
    OutElem1,
    InElem1,
    OutErr1,
    InErr1,
    OutDone1,
    InDone1,
    Env1,
    OutDone,
    OutElem2,
    InElem2,
    OutErr2,
    InErr2,
    OutDone2,
    InDone2,
    Env2
  >(options: {
    readonly onFailure: (error: OutErr) => Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>
    readonly onSuccess: (done: OutDone) => Channel<OutElem2, InElem2, OutErr2, InErr2, OutDone2, InDone2, Env2>
  }): <Env, InErr, InElem, InDone, OutElem>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<
    OutElem1 | OutElem2 | OutElem,
    InElem & InElem1 & InElem2,
    OutErr1 | OutErr2,
    InErr & InErr1 & InErr2,
    OutDone1 | OutDone2,
    InDone & InDone1 & InDone2,
    Env1 | Env2 | Env
  >
  <
    OutElem,
    InElem,
    OutErr,
    InErr,
    OutDone,
    InDone,
    Env,
    OutElem1,
    InElem1,
    OutErr1,
    InErr1,
    OutDone1,
    InDone1,
    Env1,
    OutElem2,
    InElem2,
    OutErr2,
    InErr2,
    OutDone2,
    InDone2,
    Env2
  >(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    options: {
      readonly onFailure: (error: OutErr) => Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>
      readonly onSuccess: (done: OutDone) => Channel<OutElem2, InElem2, OutErr2, InErr2, OutDone2, InDone2, Env2>
    }
  ): Channel<
    OutElem | OutElem1 | OutElem2,
    InElem & InElem1 & InElem2,
    OutErr1 | OutErr2,
    InErr & InErr1 & InErr2,
    OutDone1 | OutDone2,
    InDone & InDone1 & InDone2,
    Env | Env1 | Env2
  >
}
```
