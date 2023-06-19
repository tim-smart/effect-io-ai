# provideLayer

Provides a layer to the channel, which translates it to another level.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const provideLayer: {
  <Env0, Env, OutErr2>(layer: Layer.Layer<Env0, OutErr2, Env>): <InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env0, InErr, InElem, InDone, OutErr2 | OutErr, OutElem, OutDone>
  <InErr, InElem, InDone, OutErr, OutElem, OutDone, Env0, Env, OutErr2>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    layer: Layer.Layer<Env0, OutErr2, Env>
  ): Channel<Env0, InErr, InElem, InDone, OutErr | OutErr2, OutElem, OutDone>
}
```
