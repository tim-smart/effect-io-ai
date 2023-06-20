# catchAll

Returns a new channel that is the same as this one, except if this channel
errors for any typed error, then the returned channel will switch over to
using the fallback channel returned by the specified error handler.

To import and use `catchAll` from the "Channel" module:

```ts
import * as Channel from '@effect/stream/Channel'

// Can be accessed like this
Channel.catchAll
```

**Signature**

```ts
export declare const catchAll: {
  <Env1, InErr1, InElem1, InDone1, OutErr, OutErr1, OutElem1, OutDone1>(
    f: (error: OutErr) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>
  ): <Env, InErr, InElem, InDone, OutElem, OutDone>(
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
  <Env, InErr, InElem, InDone, OutElem, OutDone, Env1, InErr1, InElem1, InDone1, OutErr, OutErr1, OutElem1, OutDone1>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (error: OutErr) => Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>
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
