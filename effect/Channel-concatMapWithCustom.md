# concatMapWithCustom

Returns a new channel whose outputs are fed to the specified factory
function, which creates new channels in response. These new channels are
sequentially concatenated together, and all their outputs appear as outputs
of the newly returned channel. The provided merging function is used to
merge the terminal values of all channels into the single terminal value of
the returned channel.

To import and use `concatMapWithCustom` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.concatMapWithCustom
```

**Signature**

```ts
export declare const concatMapWithCustom: {
  <OutElem, OutElem2, OutDone, OutDone2, OutDone3, Env2, InErr2, InElem2, InDone2, OutErr2>(
    f: (o: OutElem) => Channel<Env2, InErr2, InElem2, InDone2, OutErr2, OutElem2, OutDone>,
    g: (o: OutDone, o1: OutDone) => OutDone,
    h: (o: OutDone, o2: OutDone2) => OutDone3,
    onPull: (
      upstreamPullRequest: UpstreamPullRequest.UpstreamPullRequest<OutElem>
    ) => UpstreamPullStrategy.UpstreamPullStrategy<OutElem2>,
    onEmit: (elem: OutElem2) => ChildExecutorDecision.ChildExecutorDecision
  ): <Env, InErr, InElem, InDone, OutErr>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone2>
  ) => Channel<Env2 | Env, InErr & InErr2, InElem & InElem2, InDone & InDone2, OutErr2 | OutErr, OutElem2, OutDone3>
  <
    Env,
    InErr,
    InElem,
    InDone,
    OutErr,
    OutElem,
    OutElem2,
    OutDone,
    OutDone2,
    OutDone3,
    Env2,
    InErr2,
    InElem2,
    InDone2,
    OutErr2
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone2>,
    f: (o: OutElem) => Channel<Env2, InErr2, InElem2, InDone2, OutErr2, OutElem2, OutDone>,
    g: (o: OutDone, o1: OutDone) => OutDone,
    h: (o: OutDone, o2: OutDone2) => OutDone3,
    onPull: (
      upstreamPullRequest: UpstreamPullRequest.UpstreamPullRequest<OutElem>
    ) => UpstreamPullStrategy.UpstreamPullStrategy<OutElem2>,
    onEmit: (elem: OutElem2) => ChildExecutorDecision.ChildExecutorDecision
  ): Channel<Env | Env2, InErr & InErr2, InElem & InElem2, InDone & InDone2, OutErr | OutErr2, OutElem2, OutDone3>
}
```
