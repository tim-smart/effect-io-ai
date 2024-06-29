# mergeOutWith

Returns a new channel which merges a number of channels emitted by this
channel using the back pressuring merge strategy and uses a given function
to merge each completed subchannel's result value. See
`Channel.mergeAll`.

To import and use `mergeOutWith` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.mergeOutWith
```

**Signature**

```ts
export declare const mergeOutWith: {
  <OutDone1>(
    n: number,
    f: (o1: OutDone1, o2: OutDone1) => OutDone1
  ): <OutElem1, InElem1, OutErr1, InErr1, InDone1, Env1, InElem, OutErr, InErr, InDone, Env>(
    self: Channel<
      Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>,
      InElem,
      OutErr,
      InErr,
      OutDone1,
      InDone,
      Env
    >
  ) => Channel<OutElem1, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, OutDone1, InDone & InDone1, Env1 | Env>
  <OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1, InElem, OutErr, InErr, InDone, Env>(
    self: Channel<
      Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>,
      InElem,
      OutErr,
      InErr,
      OutDone1,
      InDone,
      Env
    >,
    n: number,
    f: (o1: OutDone1, o2: OutDone1) => OutDone1
  ): Channel<OutElem1, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, OutDone1, InDone & InDone1, Env1 | Env>
}
```
