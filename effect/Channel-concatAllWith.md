# concatAllWith

Concat sequentially a channel of channels.

To import and use `concatAllWith` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.concatAllWith
undefined

**Signature**

```ts
export declare const concatAllWith: <
  OutElem,
  InElem2,
  OutErr2,
  InErr2,
  OutDone,
  InDone2,
  Env2,
  InElem,
  OutErr,
  InErr,
  OutDone2,
  InDone,
  Env,
  OutDone3
>(
  channels: Channel<
    Channel<OutElem, InElem2, OutErr2, InErr2, OutDone, InDone2, Env2>,
    InElem,
    OutErr,
    InErr,
    OutDone2,
    InDone,
    Env
  >,
  f: (o: OutDone, o1: OutDone) => OutDone,
  g: (o: OutDone, o2: OutDone2) => OutDone3
) => Channel<OutElem, InElem & InElem2, OutErr2 | OutErr, InErr & InErr2, OutDone3, InDone & InDone2, Env2 | Env>
```
