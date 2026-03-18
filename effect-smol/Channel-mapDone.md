Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapDone

Maps the done value of this channel using the specified function.

**Signature**

```ts
declare const mapDone: { <OutDone, OutDone2>(f: (o: OutDone) => OutDone2): <OutElem, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone2, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutDone2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (o: OutDone) => OutDone2): Channel<OutElem, OutErr, OutDone2, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1697)

Since v2.0.0