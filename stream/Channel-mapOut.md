# mapOut

Maps the output of this channel using the specified function.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const mapOut: {
  <OutElem, OutElem2>(f: (o: OutElem) => OutElem2): <Env, InErr, InElem, InDone, OutErr, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, OutElem2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (o: OutElem) => OutElem2
  ): Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
}
```
