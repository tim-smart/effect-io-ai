Package: `effect`<br />
Module: `Channel`<br />

## Channel.provideLayer

Provides a layer to the channel, which translates it to another level.

**Signature**

```ts
declare const provideLayer: { <Env, OutErr2, Env0>(layer: Layer.Layer<Env, OutErr2, Env0>): <OutElem, InElem, OutErr, InErr, OutDone, InDone>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr2 | OutErr, InErr, OutDone, InDone, Env0>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutErr2, Env0>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, layer: Layer.Layer<Env, OutErr2, Env0>): Channel<OutElem, InElem, OutErr | OutErr2, InErr, OutDone, InDone, Env0>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1758)

Since v2.0.0