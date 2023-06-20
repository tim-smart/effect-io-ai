# mergeOutWith

Returns a new channel which merges a number of channels emitted by this
channel using the back pressuring merge strategy and uses a given function
to merge each completed subchannel's result value. See
`Channel.mergeAll`.

To import and use `mergeOutWith` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.mergeOutWith
```

**Signature**

```ts
export declare const mergeOutWith: {
  <OutDone1>(n: number, f: (o1: OutDone1, o2: OutDone1) => OutDone1): <
    Env,
    Env1,
    InErr,
    InErr1,
    InElem,
    InElem1,
    InDone,
    InDone1,
    OutErr,
    OutErr1,
    OutElem1
  >(
    self: Channel<
      Env,
      InErr,
      InElem,
      InDone,
      OutErr,
      Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>,
      OutDone1
    >
  ) => Channel<Env | Env1, InErr & InErr1, InElem & InElem1, InDone & InDone1, OutErr | OutErr1, OutElem1, OutDone1>
  <Env, Env1, InErr, InErr1, InElem, InElem1, InDone, InDone1, OutErr, OutErr1, OutElem1, OutDone1>(
    self: Channel<
      Env,
      InErr,
      InElem,
      InDone,
      OutErr,
      Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>,
      OutDone1
    >,
    n: number,
    f: (o1: OutDone1, o2: OutDone1) => OutDone1
  ): Channel<Env | Env1, InErr & InErr1, InElem & InElem1, InDone & InDone1, OutErr | OutErr1, OutElem1, OutDone1>
}
```
