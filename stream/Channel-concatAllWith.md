# concatAllWith

Concat sequentially a channel of channels.

To import and use `concatAllWith` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.concatAllWith
```

**Signature**

```ts
export declare const concatAllWith: <
  Env,
  InErr,
  InElem,
  InDone,
  OutErr,
  OutElem,
  OutDone,
  OutDone2,
  OutDone3,
  Env2,
  InErr2,
  InElem2,
  InDone2,
  OutErr2
>(
  channels: Channel<
    Env,
    InErr,
    InElem,
    InDone,
    OutErr,
    Channel<Env2, InErr2, InElem2, InDone2, OutErr2, OutElem, OutDone>,
    OutDone2
  >,
  f: (o: OutDone, o1: OutDone) => OutDone,
  g: (o: OutDone, o2: OutDone2) => OutDone3
) => Channel<Env | Env2, InErr & InErr2, InElem & InElem2, InDone & InDone2, OutErr | OutErr2, OutElem, OutDone3>
```
