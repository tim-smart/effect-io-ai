# contramapError

Returns a new channel which is the same as this one but applies the given
function to the input channel's error value.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contramapError: {
  <InErr0, InErr>(f: (a: InErr0) => InErr): <Env, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, InElem, InDone, OutErr, OutElem, OutDone, InErr0, InErr>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (a: InErr0) => InErr
  ): Channel<Env, InErr0, InElem, InDone, OutErr, OutElem, OutDone>
}
```
