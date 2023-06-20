# mergeWith

Returns a new channel, which is the merge of this channel and the specified
channel, where the behavior of the returned channel on left or right early
termination is decided by the specified `leftDone` and `rightDone` merge
decisions.

To import and use `mergeWith` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.mergeWith
```

**Signature**

```ts
export declare const mergeWith: {
  <Env1, InErr1, InElem1, InDone1, OutErr, OutErr1, OutErr2, OutErr3, OutElem1, OutDone, OutDone1, OutDone2, OutDone3>(
    that: Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>,
    leftDone: (
      exit: Exit.Exit<OutErr, OutDone>
    ) => MergeDecision.MergeDecision<Env1, OutErr1, OutDone1, OutErr2, OutDone2>,
    rightDone: (
      ex: Exit.Exit<OutErr1, OutDone1>
    ) => MergeDecision.MergeDecision<Env1, OutErr, OutDone, OutErr3, OutDone3>
  ): <Env, InErr, InElem, InDone, OutElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<
    Env1 | Env,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr2 | OutErr3,
    OutElem1 | OutElem,
    OutDone2 | OutDone3
  >
  <
    Env,
    InErr,
    InElem,
    InDone,
    OutElem,
    Env1,
    InErr1,
    InElem1,
    InDone1,
    OutErr,
    OutErr1,
    OutErr2,
    OutErr3,
    OutElem1,
    OutDone,
    OutDone1,
    OutDone2,
    OutDone3
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    that: Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>,
    leftDone: (
      exit: Exit.Exit<OutErr, OutDone>
    ) => MergeDecision.MergeDecision<Env1, OutErr1, OutDone1, OutErr2, OutDone2>,
    rightDone: (
      ex: Exit.Exit<OutErr1, OutDone1>
    ) => MergeDecision.MergeDecision<Env1, OutErr, OutDone, OutErr3, OutDone3>
  ): Channel<
    Env | Env1,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr2 | OutErr3,
    OutElem | OutElem1,
    OutDone2 | OutDone3
  >
}
```
