Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapDoneEffect

Maps the done value of this channel using the specified effectful function.

**When to use**

Use when the terminal done value transformation needs services or can fail,
while emitted elements should pass through unchanged.

**Signature**

```ts
declare const mapDoneEffect: { <OutDone, OutDone2, E, R>(f: (o: OutDone) => Effect.Effect<OutDone2, E, R>): <OutElem, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone2, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutDone2, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (o: OutDone) => Effect.Effect<OutDone2, E, R>): Channel<OutElem, OutErr | E, OutDone2, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1820)

Since v4.0.0