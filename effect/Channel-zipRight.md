# zipRight

Returns a new channel that is the sequential composition of this channel
and the specified channel. The returned channel terminates with the
terminal value of that channel.

To import and use `zipRight` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.zipRight
```

**Signature**

```ts
export declare const zipRight: {
  <Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>(
    that: Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>,
    options?: { readonly concurrent?: boolean }
  ): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<
    Env1 | Env,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr1 | OutErr,
    OutElem1 | OutElem,
    OutDone1
  >
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    that: Channel<Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>,
    options?: { readonly concurrent?: boolean }
  ): Channel<
    Env | Env1,
    InErr & InErr1,
    InElem & InElem1,
    InDone & InDone1,
    OutErr | OutErr1,
    OutElem | OutElem1,
    OutDone1
  >
}
```