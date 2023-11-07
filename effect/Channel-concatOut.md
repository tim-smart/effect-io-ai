# concatOut

Returns a new channel, which is the concatenation of all the channels that
are written out by this channel. This method may only be called on channels
that output other channels.

To import and use `concatOut` from the "Channel" module:

```ts
import * as Channel from 'effect/Channel'

// Can be accessed like this
Channel.concatOut
```

**Signature**

```ts
export declare const concatOut: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Channel<
    Env,
    InErr,
    InElem,
    InDone,
    OutErr,
    Channel<Env, InErr, InElem, InDone, OutErr, OutElem, unknown>,
    OutDone
  >
) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, unknown>
```
