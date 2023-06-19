# collect

Returns a new channel, which is the same as this one, except its outputs
are filtered and transformed by the specified partial function.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const collect: {
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutElem2, OutDone>(pf: (o: OutElem) => Option.Option<OutElem2>): (
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutElem2, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    pf: (o: OutElem) => Option.Option<OutElem2>
  ): Channel<Env, InErr, InElem, InDone, OutErr, OutElem2, OutDone>
}
```
