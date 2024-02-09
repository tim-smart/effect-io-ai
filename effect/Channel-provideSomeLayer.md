# provideSomeLayer

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `Env0`.

To import and use `provideSomeLayer` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.provideSomeLayer
```

**Signature**

```ts
export declare const provideSomeLayer: {
  <Env2, OutErr2, Env0>(
    layer: Layer.Layer<Env2, OutErr2, Env0>
  ): <OutElem, InElem, OutErr, InErr, OutDone, InDone, R>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R>
  ) => Channel<OutElem, InElem, OutErr2 | OutErr, InErr, OutDone, InDone, Env0 | Exclude<R, Env2>>
  <OutElem, InElem, OutErr, InErr, OutDone, InDone, R, Env2, OutErr2, Env0>(
    self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R>,
    layer: Layer.Layer<Env2, OutErr2, Env0>
  ): Channel<OutElem, InElem, OutErr | OutErr2, InErr, OutDone, InDone, Env0 | Exclude<R, Env2>>
}
```
