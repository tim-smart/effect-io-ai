# concatMapWithCustom

Returns a new channel whose outputs are fed to the specified factory
function, which creates new channels in response. These new channels are
sequentially concatenated together, and all their outputs appear as outputs
of the newly returned channel. The provided merging function is used to
merge the terminal values of all channels into the single terminal value of
the returned channel.

To import and use `concatMapWithCustom` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.concatMapWithCustom
```

**Signature**

```ts
export declare const concatMapWithCustom: {
  <OutElem, OutElem2, InElem2, OutErr2, InErr2, OutDone, InDone2, Env2, OutDone2, OutDone3>(
    f: (o: OutElem) => Channel<OutElem2, InElem2, OutErr2, InErr2, OutDone, InDone2, Env2>,
    g: (o: OutDone, o1: OutDone) => OutDone,
    h: (o: OutDone, o2: OutDone2) => OutDone3,
    onPull: (
      upstreamPullRequest: UpstreamPullRequest.UpstreamPullRequest<OutElem>
    ) => UpstreamPullStrategy.UpstreamPullStrategy<OutElem2>,
    onEmit: (elem: OutElem2) => ChildExecutorDecision.ChildExecutorDecision
  ): <Env, InErr, InElem, InDone, OutErr>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone2, InDone, Env>
  ) => Channel<OutElem2, InElem & InElem2, OutErr2 | OutErr, InErr & InErr2, OutDone3, InDone & InDone2, Env2 | Env>
  <
    OutElem,
    InElem,
    OutErr,
    InErr,
    OutDone2,
    InDone,
    Env,
    OutElem2,
    InElem2,
    OutErr2,
    InErr2,
    OutDone,
    InDone2,
    Env2,
    OutDone3
  >(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone2, InDone, Env>,
    f: (o: OutElem) => Channel<OutElem2, InElem2, OutErr2, InErr2, OutDone, InDone2, Env2>,
    g: (o: OutDone, o1: OutDone) => OutDone,
    h: (o: OutDone, o2: OutDone2) => OutDone3,
    onPull: (
      upstreamPullRequest: UpstreamPullRequest.UpstreamPullRequest<OutElem>
    ) => UpstreamPullStrategy.UpstreamPullStrategy<OutElem2>,
    onEmit: (elem: OutElem2) => ChildExecutorDecision.ChildExecutorDecision
  ): Channel<OutElem2, InElem & InElem2, OutErr | OutErr2, InErr & InErr2, OutDone3, InDone & InDone2, Env | Env2>
}
```
