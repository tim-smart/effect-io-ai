Package: `effect`<br />
Module: `Channel`<br />

## Channel.concatMap

Returns a new channel whose outputs are fed to the specified factory
function, which creates new channels in response. These new channels are
sequentially concatenated together, and all their outputs appear as outputs
of the newly returned channel.

**Signature**

```ts
declare const concatMap: { <OutElem, OutElem2, InElem2, OutErr2, InErr2, X, InDone2, Env2>(f: (o: OutElem) => Channel<OutElem2, InElem2, OutErr2, InErr2, X, InDone2, Env2>): <Env, InErr, InElem, InDone, OutErr, OutDone>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem2, InElem & InElem2, OutErr2 | OutErr, InErr & InErr2, unknown, InDone & InDone2, Env2 | Env>; <Env, InErr, InElem, InDone, OutErr, OutDone, OutElem, OutElem2, Env2, InErr2, InElem2, InDone2, OutErr2, X>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (o: OutElem) => Channel<OutElem2, InElem2, OutErr2, InErr2, X, InDone2, Env2>): Channel<OutElem2, InElem & InElem2, OutErr | OutErr2, InErr & InErr2, unknown, InDone & InDone2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L404)

Since v2.0.0