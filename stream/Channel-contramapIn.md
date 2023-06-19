# contramapIn

Returns a new channel which is the same as this one but applies the given
function to the input channel's output elements.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contramapIn: {
  <InElem0, InElem>(f: (a: InElem0) => InElem): <Env, InErr, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem0, InDone, OutErr, OutElem, OutDone>
  <Env, InErr, InDone, OutErr, OutElem, OutDone, InElem0, InElem>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (a: InElem0) => InElem
  ): Channel<Env, InErr, InElem0, InDone, OutErr, OutElem, OutDone>
}
```
