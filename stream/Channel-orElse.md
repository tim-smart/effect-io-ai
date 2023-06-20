# orElse

Returns a new channel that will perform the operations of this one, until
failure, and then it will switch over to the operations of the specified
fallback channel.

To import and use `orElse` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.orElse
```

**Signature**

```ts
export declare const orElse: {
  <Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>(
    that: LazyArg<Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>>
  ): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<
    Env1 | Env,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr1,
    OutElem1 | OutElem,
    OutDone1 | OutDone
  >
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    that: LazyArg<Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>>
  ): Channel<
    Env | Env1,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr1,
    OutElem | OutElem1,
    OutDone | OutDone1
  >
}
```
