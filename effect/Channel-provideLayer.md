# provideLayer

Provides a layer to the channel, which translates it to another level.

To import and use `provideLayer` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.provideLayer
undefined

**Signature**

```ts
export declare const provideLayer: {
  <Env, OutErr2, Env0>(
    layer: Layer.Layer<Env, OutErr2, Env0>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
  ) => Channel<OutElem, InElem, OutErr2 | OutErr, InErr, OutDone, InDone, Env0>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutErr2, Env0>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>,
    layer: Layer.Layer<Env, OutErr2, Env0>
  ): Channel<OutElem, InElem, OutErr | OutErr2, InErr, OutDone, InDone, Env0>
}
```
