# contramap

Returns a new channel which is the same as this one but applies the given
function to the input channel's done value.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contramap: {
  <InDone0, InDone>(f: (a: InDone0) => InDone): <Env, InErr, InElem, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
  <Env, InErr, InElem, OutErr, OutElem, OutDone, InDone0, InDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (a: InDone0) => InDone
  ): Channel<Env, InErr, InElem, InDone0, OutErr, OutElem, OutDone>
}
```
