## mapOut

Maps the output of this channel using the specified function.

**Signature**

```ts
declare const mapOut: { <OutElem, OutElem2>(f: (o: OutElem) => OutElem2): <InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem2, InElem, OutErr, InErr, OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem2>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (o: OutElem) => OutElem2): Channel<OutElem2, InElem, OutErr, InErr, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1285)

Since v2.0.0