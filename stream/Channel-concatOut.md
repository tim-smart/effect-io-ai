# concatOut

Returns a new channel, which is the concatenation of all the channels that
are written out by this channel. This method may only be called on channels
that output other channels.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

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
