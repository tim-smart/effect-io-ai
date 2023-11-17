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
  <Env0, Env2, OutErr2>(
    layer: Layer.Layer<Env0, OutErr2, Env2>
  ): <R, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<R, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env0 | Exclude<R, Env2>, InErr, InElem, InDone, OutErr2 | OutErr, OutElem, OutDone>
  <R, InErr, InElem, InDone, OutErr, OutElem, OutDone, Env0, Env2, OutErr2>(
    self: Channel<R, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    layer: Layer.Layer<Env0, OutErr2, Env2>
  ): Channel<Env0 | Exclude<R, Env2>, InErr, InElem, InDone, OutErr | OutErr2, OutElem, OutDone>
}
```
