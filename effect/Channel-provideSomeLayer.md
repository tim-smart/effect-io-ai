## provideSomeLayer

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `Env0`.

**Signature**

```ts
declare const provideSomeLayer: { <R2, OutErr2, Env0>(layer: Layer.Layer<R2, OutErr2, Env0>): <OutElem, InElem, OutErr, InErr, OutDone, InDone, R>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R>) => Channel<OutElem, InElem, OutErr2 | OutErr, InErr, OutDone, InDone, Env0 | Exclude<R, R2>>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, R, R2, OutErr2, Env0>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R>, layer: Layer.Layer<R2, OutErr2, Env0>): Channel<OutElem, InElem, OutErr | OutErr2, InErr, OutDone, InDone, Env0 | Exclude<R, R2>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1796)

Since v2.0.0