# foldCauseChannel

Folds over the result of this channel including any cause of termination.

To import and use `foldCauseChannel` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.foldCauseChannel
undefined

**Signature**

```ts
export declare const foldCauseChannel: {
  <
    OutErr,
    OutElem1,
    InElem1,
    OutErr2,
    InErr1,
    OutDone2,
    InDone1,
    Env1,
    OutDone,
    OutElem2,
    InElem2,
    OutErr3,
    InErr2,
    OutDone3,
    InDone2,
    Env2
  >(options: {
    readonly onFailure: (c: Cause.Cause<OutErr>) => Channel<OutElem1, InElem1, OutErr2, InErr1, OutDone2, InDone1, Env1>
    readonly onSuccess: (o: OutDone) => Channel<OutElem2, InElem2, OutErr3, InErr2, OutDone3, InDone2, Env2>
  }): <Env, InErr, InElem, InDone, OutElem>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<
    OutElem1 | OutElem2 | OutElem,
    InElem & InElem1 & InElem2,
    OutErr2 | OutErr3,
    InErr & InErr1 & InErr2,
    OutDone2 | OutDone3,
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
    OutErr2,
    InErr1,
    OutDone2,
    InDone1,
    Env1,
    OutElem2,
    InElem2,
    OutErr3,
    InErr2,
    OutDone3,
    InDone2,
    Env2
  >(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    options: {
      readonly onFailure: (
        c: Cause.Cause<OutErr>
      ) => Channel<OutElem1, InElem1, OutErr2, InErr1, OutDone2, InDone1, Env1>
      readonly onSuccess: (o: OutDone) => Channel<OutElem2, InElem2, OutErr3, InErr2, OutDone3, InDone2, Env2>
    }
  ): Channel<
    OutElem | OutElem1 | OutElem2,
    InElem & InElem1 & InElem2,
    OutErr2 | OutErr3,
    InErr & InErr1 & InErr2,
    OutDone2 | OutDone3,
    InDone & InDone1 & InDone2,
    Env | Env1 | Env2
  >
}
```
