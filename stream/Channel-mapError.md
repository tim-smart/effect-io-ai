# mapError

Returns a new channel, which is the same as this one, except the failure
value of the returned channel is created by applying the specified function
to the failure value of this channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const mapError: {
  <OutErr, OutErr2>(f: (err: OutErr) => OutErr2): <Env, InErr, InElem, InDone, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr2, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutElem, OutDone, OutErr, OutErr2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (err: OutErr) => OutErr2
  ): Channel<Env, InErr, InElem, InDone, OutErr2, OutElem, OutDone>
}
```
