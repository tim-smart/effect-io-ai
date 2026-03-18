Package: `effect`<br />
Module: `Channel`<br />

## Channel.provideServices

Provides a layer or service map to the channel, removing the corresponding
service requirements. Use `options.local` to build the layer every time; by
default, layers are shared between provide calls.

**Signature**

```ts
declare const provideServices: { <R2>(services: ServiceMap.ServiceMap<R2>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Exclude<Env, R2>>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, R2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, services: ServiceMap.ServiceMap<R2>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Exclude<Env, R2>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6617)

Since v4.0.0