# concatMap

Returns a new channel whose outputs are fed to the specified factory
function, which creates new channels in response. These new channels are
sequentially concatenated together, and all their outputs appear as outputs
of the newly returned channel.

To import and use `concatMap` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.concatMap
```

**Signature**

```ts
export declare const concatMap: {
  <OutElem, OutElem2, Env2, InErr2, InElem2, InDone2, OutErr2, _>(
    f: (o: OutElem) => Channel<Env2, InErr2, InElem2, InDone2, OutErr2, OutElem2, _>
  ): <Env, InErr, InElem, InDone, OutErr, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env2 | Env, InErr & InErr2, InElem & InElem2, InDone & InDone2, OutErr2 | OutErr, OutElem2, unknown>
  <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, OutElem2, Env2, InErr2, InElem2, InDone2, OutErr2, _>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (o: OutElem) => Channel<Env2, InErr2, InElem2, InDone2, OutErr2, OutElem2, _>
  ): Channel<Env | Env2, InErr & InErr2, InElem & InElem2, InDone & InDone2, OutErr | OutErr2, OutElem2, unknown>
}
```
