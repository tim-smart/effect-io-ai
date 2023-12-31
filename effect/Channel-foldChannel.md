# foldChannel

Folds over the result of this channel.

To import and use `foldChannel` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.foldChannel
```

**Signature**

```ts
export declare const foldChannel: {
  <
    Env1,
    Env2,
    InErr1,
    InErr2,
    InElem1,
    InElem2,
    InDone1,
    InDone2,
    OutErr,
    OutErr1,
    OutErr2,
    OutElem1,
    OutElem2,
    OutDone,
    OutDone1,
    OutDone2
  >(options: {
    readonly onFailure: (error: OutErr) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>
    readonly onSuccess: (done: OutDone) => Channel<Env2, InErr2, InElem2, InDone2, OutErr2, OutElem2, OutDone2>
  }): <Env, InErr, InElem, InDone, OutElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<
    Env1 | Env2 | Env,
    InErr & InErr1 & InErr2,
    InElem & InElem1 & InElem2,
    InDone & InDone1 & InDone2,
    OutErr1 | OutErr2,
    OutElem1 | OutElem2 | OutElem,
    OutDone1 | OutDone2
  >
  <
    Env,
    InErr,
    InElem,
    InDone,
    OutElem,
    Env1,
    Env2,
    InErr1,
    InErr2,
    InElem1,
    InElem2,
    InDone1,
    InDone2,
    OutErr,
    OutErr1,
    OutErr2,
    OutElem1,
    OutElem2,
    OutDone,
    OutDone1,
    OutDone2
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    options: {
      readonly onFailure: (error: OutErr) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>
      readonly onSuccess: (done: OutDone) => Channel<Env2, InErr2, InElem2, InDone2, OutErr2, OutElem2, OutDone2>
    }
  ): Channel<
    Env | Env1 | Env2,
    InErr & InErr1 & InErr2,
    InElem & InElem1 & InElem2,
    InDone & InDone1 & InDone2,
    OutErr1 | OutErr2,
    OutElem | OutElem1 | OutElem2,
    OutDone1 | OutDone2
  >
}
```
