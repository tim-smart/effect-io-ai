Package: `effect`<br />
Module: `Channel`<br />

## Channel.concatAllWith

Concat sequentially a channel of channels.

**Signature**

```ts
declare const concatAllWith: <OutElem, InElem2, OutErr2, InErr2, OutDone, InDone2, Env2, InElem, OutErr, InErr, OutDone2, InDone, Env, OutDone3>(channels: Channel<Channel<OutElem, InElem2, OutErr2, InErr2, OutDone, InDone2, Env2>, InElem, OutErr, InErr, OutDone2, InDone, Env>, f: (o: OutDone, o1: OutDone) => OutDone, g: (o: OutDone, o2: OutDone2) => OutDone3) => Channel<OutElem, InElem & InElem2, OutErr2 | OutErr, InErr & InErr2, OutDone3, InDone & InDone2, Env2 | Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L365)

Since v2.0.0