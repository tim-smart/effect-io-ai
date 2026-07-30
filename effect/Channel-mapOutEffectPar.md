Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapOutEffectPar

Creates a channel that is like this channel but the given Effect function gets
applied to each emitted output element, taking `n` elements at once and
mapping them in parallel.

**Signature**

```ts
declare const mapOutEffectPar: { <OutElem, OutElem1, OutErr1, Env1>(f: (o: OutElem) => Effect.Effect<OutElem1, OutErr1, Env1>, n: number): <InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem1, InElem, OutErr1 | OutErr, InErr, OutDone, InDone, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, OutErr1, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (o: OutElem) => Effect.Effect<OutElem1, OutErr1, Env1>, n: number): Channel<OutElem1, InElem, OutErr | OutErr1, InErr, OutDone, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1324)

Since v2.0.0