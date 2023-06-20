# foldCauseChannel

Folds over the result of this channel including any cause of termination.

To import and use `foldCauseChannel` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.foldCauseChannel
```

**Signature**

```ts
export declare const foldCauseChannel: {
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
    OutErr2,
    OutErr3,
    OutElem1,
    OutElem2,
    OutDone,
    OutDone2,
    OutDone3
  >(
    onError: (c: Cause.Cause<OutErr>) => Channel<Env1, InErr1, InElem1, InDone1, OutErr2, OutElem1, OutDone2>,
    onSuccess: (o: OutDone) => Channel<Env2, InErr2, InElem2, InDone2, OutErr3, OutElem2, OutDone3>
  ): <Env, InErr, InElem, InDone, OutElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<
    Env1 | Env2 | Env,
    InErr & InErr1 & InErr2,
    InElem & InElem1 & InElem2,
    InDone & InDone1 & InDone2,
    OutErr2 | OutErr3,
    OutElem1 | OutElem2 | OutElem,
    OutDone2 | OutDone3
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
    OutErr2,
    OutErr3,
    OutElem1,
    OutElem2,
    OutDone,
    OutDone2,
    OutDone3
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    onError: (c: Cause.Cause<OutErr>) => Channel<Env1, InErr1, InElem1, InDone1, OutErr2, OutElem1, OutDone2>,
    onSuccess: (o: OutDone) => Channel<Env2, InErr2, InElem2, InDone2, OutErr3, OutElem2, OutDone3>
  ): Channel<
    Env | Env1 | Env2,
    InErr & InErr1 & InErr2,
    InElem & InElem1 & InElem2,
    InDone & InDone1 & InDone2,
    OutErr2 | OutErr3,
    OutElem | OutElem1 | OutElem2,
    OutDone2 | OutDone3
  >
}
```
