Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapDoneEffect

Maps the done value of this channel using the specified effectful function.

**Signature**

```ts
declare const mapDoneEffect: { <OutDone, OutDone2, E, R>(f: (o: OutDone) => Effect.Effect<OutDone2, E, R>): <OutElem, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone2, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutDone2, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (o: OutDone) => Effect.Effect<OutDone2, E, R>): Channel<OutElem, OutErr | E, OutDone2, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1721)

Since v2.0.0