# concatOut

Returns a new channel, which is the concatenation of all the channels that
are written out by this channel. This method may only be called on channels
that output other channels.

To import and use `concatOut` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.concatOut
undefined

**Signature**

```ts
export declare const concatOut: <OutElem, InElem, OutErr, InErr, InDone, Env, OutDone>(
  self: Channel<
    Channel<OutElem, InElem, OutErr, InErr, unknown, InDone, Env>,
    InElem,
    OutErr,
    InErr,
    OutDone,
    InDone,
    Env
  >
) => Channel<OutElem, InElem, OutErr, InErr, unknown, InDone, Env>
```
