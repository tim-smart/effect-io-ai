Package: `effect`<br />
Module: `Channel`<br />

## Channel.let

Adds a computed field to each object emitted by a channel.

**Signature**

```ts
declare const let: { <N extends string, OutElem extends object, B>(name: Exclude<N, keyof OutElem>, f: (a: NoInfer<OutElem>) => B): <OutErr, OutDone, InElem, InErr, InDone, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, R>) => Channel<{ [K in N | keyof OutElem]: K extends keyof OutElem ? OutElem[K] : B; }, OutErr, OutDone, InElem, InErr, InDone, R>; <OutElem extends object, OutErr, OutDone, InElem, InErr, InDone, R, N extends string, B>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, R>, name: Exclude<N, keyof OutElem>, f: (a: NoInfer<OutElem>) => B): Channel<{ [K in N | keyof OutElem]: K extends keyof OutElem ? OutElem[K] : B; }, OutErr, OutDone, InElem, InErr, InDone, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7570)

Since v4.0.0